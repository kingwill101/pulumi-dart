/// The name of the sample schema to apply when creating this database.
enum SampleName {
  valueAdventureWorksLT("AdventureWorksLT"),
  valueWideWorldImportersStd("WideWorldImportersStd"),
  valueWideWorldImportersFull("WideWorldImportersFull");

  const SampleName(this.wireValue);
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
