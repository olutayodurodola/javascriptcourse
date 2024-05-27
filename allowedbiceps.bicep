@allowed([
  'eastus'
  'westus'
])
param location string = 'eastus'
@minLength(4)
@maxLength(7)
param part string
var name = '${part}res'
resources storageaccount 'Microsoft.Storage/storageaccount@2021-02-01' {
  name: 'st889${name}'
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Standard_LRS'
  }
}
