Select *
From [Portfolio Project].dbo.NH$

Select OwnerAddress
From [Portfolio Project].dbo.NH$

Select
PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)
,PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)
From [Portfolio Project].dbo.NH$

ALTER TABLE NH$
Add OwnerSplitAddress Nvarchar(255);

Update NH$
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)


ALTER TABLE NH$
Add OwnerSplitCity Nvarchar(255);

Update NH$
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)


ALTER TABLE NH$
Add OwnerSplitState Nvarchar(255);

Update NH$
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)



Select *
From [Portfolio Project].dbo.NH$

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- Remove Duplicates

WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					UniqueID
					) row_num

From [Portfolio Project].dbo.NH$
--order by ParcelID
)
Select *
From RowNumCTE
Where row_num > 1
Order by PropertyAddress



Select *
From [Portfolio Project].dbo.NashvilleHousing




---------------------------------------------------------------------------------------------------------
