/// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
/// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
/// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
/// Backup is VMAppContainer
enum ProtectableContainerType {
  valueInvalid("Invalid"),
  valueUnknown("Unknown"),
  valueIaasVMContainer("IaasVMContainer"),
  valueIaasVMServiceContainer("IaasVMServiceContainer"),
  valueDPMContainer("DPMContainer"),
  valueAzureBackupServerContainer("AzureBackupServerContainer"),
  valueMABContainer("MABContainer"),
  valueCluster("Cluster"),
  valueAzureSqlContainer("AzureSqlContainer"),
  valueWindows("Windows"),
  valueVCenter("VCenter"),
  valueVMAppContainer("VMAppContainer"),
  valueSQLAGWorkLoadContainer("SQLAGWorkLoadContainer"),
  valueStorageContainer("StorageContainer"),
  valueGenericContainer("GenericContainer"),
  valueMicrosoftClassicComputeVirtualMachines("Microsoft.ClassicCompute/virtualMachines"),
  valueMicrosoftComputeVirtualMachines("Microsoft.Compute/virtualMachines"),
  valueAzureWorkloadContainer("AzureWorkloadContainer");

  const ProtectableContainerType(this.wireValue);
  final String wireValue;

  static ProtectableContainerType fromValue(String value) {
    for (final item in ProtectableContainerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectableContainerType value: $value');
  }
}
