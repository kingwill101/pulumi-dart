// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointConnectionPrivateServiceConnection {
  /// Specifies the Name of the private endpoint.
  final pulumi.Input<String> name;
  /// The private IP address associated with the private endpoint, note that you will have a private IP address assigned to the private endpoint even if the connection request was `Rejected`.
  final pulumi.Input<String> privateIpAddress;
  /// Possible values are as follows:
  /// Value | Meaning
  /// -- | --
  /// `Auto-Approved` | The remote resource owner has added you to the `Auto-Approved` RBAC permission list for the remote resource, all private endpoint connection requests will be automatically `Approved`.
  /// `Deleted state` | The resource owner has `Rejected` the private endpoint connection request and has removed your private endpoint request from the remote resource.
  /// `request/response message` | If you submitted a manual private endpoint connection request, while in the `Pending` status the `requestResponse` will display the same text from your `requestMessage` in the `privateServiceConnection` block above. If the private endpoint connection request was `Rejected` by the owner of the remote resource, the text for the rejection will be displayed as the `requestResponse` text, if the private endpoint connection request was `Approved` by the owner of the remote resource, the text for the approval will be displayed as the `requestResponse` text
  final pulumi.Input<String> requestResponse;
  /// The current status of the private endpoint request, possible values will be `Pending`, `Approved`, `Rejected`, or `Disconnected`.
  final pulumi.Input<String> status;

  /// Creates a new [GetEndpointConnectionPrivateServiceConnection].
  /// [name] Specifies the Name of the private endpoint.
  /// [privateIpAddress] The private IP address associated with the private endpoint, note that you will have a private IP address assigned to the private endpoint even if the connection request was `Rejected`.
  /// [requestResponse] Possible values are as follows:
  /// [status] The current status of the private endpoint request, possible values will be `Pending`, `Approved`, `Rejected`, or `Disconnected`.
  const GetEndpointConnectionPrivateServiceConnection({
    required this.name,
    required this.privateIpAddress,
    required this.requestResponse,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateIpAddress': privateIpAddress,
      'requestResponse': requestResponse,
      'status': status,
    };
  }

  factory GetEndpointConnectionPrivateServiceConnection.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionPrivateServiceConnection(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      requestResponse: pulumi.Input.fromValue(map['requestResponse'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
