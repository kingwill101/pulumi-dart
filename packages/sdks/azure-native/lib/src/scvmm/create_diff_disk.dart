import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets a value indicating diff disk.
enum CreateDiffDisk implements pulumi.PulumiEnum<String> {
  valueFalse("false"),
  valueTrue("true");

  const CreateDiffDisk(this.wireValue);
  @override
  final String wireValue;

  static CreateDiffDisk fromValue(String value) {
    for (final item in CreateDiffDisk.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateDiffDisk value: $value');
  }
}
