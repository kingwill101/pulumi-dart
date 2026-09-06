import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
enum PrivateEndpointServiceConnectionStatus implements pulumi.PulumiEnum<String> {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected");

  const PrivateEndpointServiceConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointServiceConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointServiceConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointServiceConnectionStatus value: $value');
  }
}
