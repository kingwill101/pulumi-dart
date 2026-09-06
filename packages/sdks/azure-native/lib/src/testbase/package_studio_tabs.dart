import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the tabs when creating / cloning / editing a package.
enum PackageStudioTabs implements pulumi.PulumiEnum<String> {
  valueUnspecified("Unspecified"),
  valueBasicsTab("BasicsTab"),
  valueConfigureTestTab("ConfigureTestTab"),
  valueEditPackageTab("EditPackageTab"),
  valueTestMatrixTab("TestMatrixTab"),
  valueTagsTab("TagsTab"),
  valueReviewAndCreateTab("ReviewAndCreateTab");

  const PackageStudioTabs(this.wireValue);
  @override
  final String wireValue;

  static PackageStudioTabs fromValue(String value) {
    for (final item in PackageStudioTabs.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageStudioTabs value: $value');
  }
}
