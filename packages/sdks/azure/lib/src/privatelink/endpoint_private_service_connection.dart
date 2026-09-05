// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointPrivateServiceConnection {
  /// Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If you are trying to connect the Private Endpoint to a remote resource without having the correct RBAC permissions on the remote resource set this value to `true`.
  final pulumi.Input<bool> isManualConnection;
  /// Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `privateConnectionResourceId` or `privateConnectionResourceAlias` must be specified. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? privateConnectionResourceAlias;
  /// The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `privateConnectionResourceId` or `privateConnectionResourceAlias` must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself.
  final pulumi.Input<String?>? privateConnectionResourceId;
  /// The private IP address associated with the private endpoint, note that you will have a private IP address assigned to the private endpoint even if the connection request was `Rejected`.
  final pulumi.Input<String?>? privateIpAddress;
  /// A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The provider allows a maximum request message length of `140` characters, however the request message maximum length is dependent on the service the private endpoint is connected to. Only valid if `isManualConnection` is set to `true`.
  ///
  /// &gt; **Note:** When connected to an SQL resource the `requestMessage` maximum length is `128`.
  final pulumi.Input<String?>? requestMessage;
  /// A list of subresource names which the Private Endpoint is able to connect to. `subresourceNames` corresponds to `groupId`. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the `Subresources` column. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Some resource types (such as Storage Account) only support 1 subresource per private endpoint.
  ///
  /// &gt; **Note:** For most Private Links one or more `subresourceNames` will need to be specified, please see the linked documentation for details.
  final pulumi.Input<List<String>?>? subresourceNames;

  /// Creates a new [EndpointPrivateServiceConnection].
  /// [isManualConnection] Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created.
  /// [name] Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created.
  /// [privateConnectionResourceAlias] The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `privateConnectionResourceId` or `privateConnectionResourceAlias` must be specified. Changing this forces a new resource to be created.
  /// [privateConnectionResourceId] The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `privateConnectionResourceId` or `privateConnectionResourceAlias` must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself.
  /// [privateIpAddress] The private IP address associated with the private endpoint, note that you will have a private IP address assigned to the private endpoint even if the connection request was `Rejected`.
  /// [requestMessage] A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The provider allows a maximum request message length of `140` characters, however the request message maximum length is dependent on the service the private endpoint is connected to. Only valid if `isManualConnection` is set to `true`.
  /// [subresourceNames] A list of subresource names which the Private Endpoint is able to connect to. `subresourceNames` corresponds to `groupId`. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the `Subresources` column. Changing this forces a new resource to be created.
  const EndpointPrivateServiceConnection({
    required this.isManualConnection,
    required this.name,
    this.privateConnectionResourceAlias,
    this.privateConnectionResourceId,
    this.privateIpAddress,
    this.requestMessage,
    this.subresourceNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isManualConnection': isManualConnection,
      'name': name,
      'privateConnectionResourceAlias': ?privateConnectionResourceAlias,
      'privateConnectionResourceId': ?privateConnectionResourceId,
      'privateIpAddress': ?privateIpAddress,
      'requestMessage': ?requestMessage,
      'subresourceNames': ?subresourceNames,
    };
  }

  factory EndpointPrivateServiceConnection.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateServiceConnection(
      isManualConnection: pulumi.Input.fromValue(map['isManualConnection'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateConnectionResourceAlias: (() { final guardedValue = map['privateConnectionResourceAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateConnectionResourceId: (() { final guardedValue = map['privateConnectionResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subresourceNames: (() { final guardedValue = map['subresourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
