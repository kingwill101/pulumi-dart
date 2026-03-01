/// Specifies the tabs when creating / cloning / editing a package.
enum PackageStudioTabs {
  valueUnspecified("Unspecified"),
  valueBasicsTab("BasicsTab"),
  valueConfigureTestTab("ConfigureTestTab"),
  valueEditPackageTab("EditPackageTab"),
  valueTestMatrixTab("TestMatrixTab"),
  valueTagsTab("TagsTab"),
  valueReviewAndCreateTab("ReviewAndCreateTab");

  const PackageStudioTabs(this.value);
  final String value;

  static PackageStudioTabs fromValue(String value) {
    for (final item in PackageStudioTabs.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageStudioTabs value: $value');
  }
}

