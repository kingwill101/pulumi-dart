import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Kernel Type of the notebook.
enum GoogleCloudDataplexV1ContentNotebookKernelType implements pulumi.PulumiEnum<String> {
  kernelTypeUnspecified("KERNEL_TYPE_UNSPECIFIED"),
  python3("PYTHON3");

  const GoogleCloudDataplexV1ContentNotebookKernelType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDataplexV1ContentNotebookKernelType fromValue(String value) {
    for (final item in GoogleCloudDataplexV1ContentNotebookKernelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1ContentNotebookKernelType value: $value');
  }
}
