import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the sample schema to apply when creating this database.
enum SampleName implements pulumi.PulumiEnum<String> {
  valueAdventureWorksLT("AdventureWorksLT"),
  valueWideWorldImportersStd("WideWorldImportersStd"),
  valueWideWorldImportersFull("WideWorldImportersFull");

  const SampleName(this.wireValue);
  @override
  final String wireValue;

  static SampleName fromValue(String value) {
    for (final item in SampleName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SampleName value: $value');
  }
}
