import 'package:pulumi/pulumi.dart' as pulumi;

/// The provisioning state of the shared private link resource. Valid values are Updating, Deleting, Failed, Succeeded or Incomplete.
enum SharedPrivateLinkResourceProvisioningState implements pulumi.PulumiEnum<String> {
  updating("Updating"),
  deleting("Deleting"),
  failed("Failed"),
  succeeded("Succeeded"),
  incomplete("Incomplete");

  const SharedPrivateLinkResourceProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static SharedPrivateLinkResourceProvisioningState fromValue(String value) {
    for (final item in SharedPrivateLinkResourceProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SharedPrivateLinkResourceProvisioningState value: $value');
  }
}
