import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Kernel
enum JupyterConfigKernel implements pulumi.PulumiEnum<String> {
  kernelUnspecified("KERNEL_UNSPECIFIED"),
  python("PYTHON"),
  scala("SCALA");

  const JupyterConfigKernel(this.wireValue);
  @override
  final String wireValue;

  static JupyterConfigKernel fromValue(String value) {
    for (final item in JupyterConfigKernel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JupyterConfigKernel value: $value');
  }
}
