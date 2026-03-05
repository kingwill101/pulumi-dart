/// Some resources do not support deletion.  This flag will denote how the stack should handle those resources.
enum DeploymentStacksResourcesWithoutDeleteSupportEnum {
  detach("detach"),
  fail("fail");

  const DeploymentStacksResourcesWithoutDeleteSupportEnum(this.wireValue);
  final String wireValue;

  static DeploymentStacksResourcesWithoutDeleteSupportEnum fromValue(String value) {
    for (final item in DeploymentStacksResourcesWithoutDeleteSupportEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentStacksResourcesWithoutDeleteSupportEnum value: $value');
  }
}

