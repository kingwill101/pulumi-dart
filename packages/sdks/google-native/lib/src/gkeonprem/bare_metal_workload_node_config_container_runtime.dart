import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies which container runtime will be used.
enum BareMetalWorkloadNodeConfigContainerRuntime implements pulumi.PulumiEnum<String> {
  containerRuntimeUnspecified("CONTAINER_RUNTIME_UNSPECIFIED"),
  containerd("CONTAINERD");

  const BareMetalWorkloadNodeConfigContainerRuntime(this.wireValue);
  @override
  final String wireValue;

  static BareMetalWorkloadNodeConfigContainerRuntime fromValue(String value) {
    for (final item in BareMetalWorkloadNodeConfigContainerRuntime.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BareMetalWorkloadNodeConfigContainerRuntime value: $value');
  }
}
