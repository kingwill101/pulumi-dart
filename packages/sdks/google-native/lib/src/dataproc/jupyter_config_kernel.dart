/// Optional. Kernel
enum JupyterConfigKernel {
  kernelUnspecified("KERNEL_UNSPECIFIED"),
  python("PYTHON"),
  scala("SCALA");

  const JupyterConfigKernel(this.wireValue);
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

