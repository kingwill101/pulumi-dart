// ignore_for_file: unused_element, unnecessary_cast


class EndpointPrivateServiceConnection {
  /// Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created.
  ///
  /// > **Note:** If you are trying to connect the Private Endpoint to a remote resource without having the correct RBAC permissions on the remote resource set this value to `true`.
  final bool isManualConnection;
  /// Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created.
  final String name;
  /// The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `private_connection_resource_id` or `private_connection_resource_alias` must be specified. Changing this forces a new resource to be created.
  final String? privateConnectionResourceAlias;
  /// The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `private_connection_resource_id` or `private_connection_resource_alias` must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself.
  final String? privateConnectionResourceId;
  /// (Required) The static IP address set by this configuration. It is recommended to use the private IP address exported in the `private_service_connection` block to obtain the address associated with the private endpoint.
  final String? privateIpAddress;
  /// A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The provider allows a maximum request message length of `140` characters, however the request message maximum length is dependent on the service the private endpoint is connected to. Only valid if `is_manual_connection` is set to `true`.
  ///
  /// > **Note:** When connected to an SQL resource the `request_message` maximum length is `128`.
  final String? requestMessage;
  /// A list of subresource names which the Private Endpoint is able to connect to. `subresource_names` corresponds to `group_id`. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the `Subresources` column. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Some resource types (such as Storage Account) only support 1 subresource per private endpoint.
  ///
  /// > **Note:** For most Private Links one or more `subresource_names` will need to be specified, please see the linked documentation for details.
  final List<String>? subresourceNames;

  /// Creates a new [EndpointPrivateServiceConnection].
  /// [isManualConnection] Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created.
  /// [name] Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created.
  /// [privateConnectionResourceAlias] The Service Alias of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `private_connection_resource_id` or `private_connection_resource_alias` must be specified. Changing this forces a new resource to be created.
  /// [privateConnectionResourceId] The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of `private_connection_resource_id` or `private_connection_resource_alias` must be specified. Changing this forces a new resource to be created. For a web app or function app slot, the parent web app should be used in this field instead of a reference to the slot itself.
  /// [privateIpAddress] (Required) The static IP address set by this configuration. It is recommended to use the private IP address exported in the `private_service_connection` block to obtain the address associated with the private endpoint.
  /// [requestMessage] A message passed to the owner of the remote resource when the private endpoint attempts to establish the connection to the remote resource. The provider allows a maximum request message length of `140` characters, however the request message maximum length is dependent on the service the private endpoint is connected to. Only valid if `is_manual_connection` is set to `true`.
  /// [subresourceNames] A list of subresource names which the Private Endpoint is able to connect to. `subresource_names` corresponds to `group_id`. Possible values are detailed in the product [documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-overview#private-link-resource) in the `Subresources` column. Changing this forces a new resource to be created.
  EndpointPrivateServiceConnection({
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
      isManualConnection: map['isManualConnection'] as bool,
      name: map['name'] as String,
      privateConnectionResourceAlias: map['privateConnectionResourceAlias'] == null ? null : map['privateConnectionResourceAlias'] as String,
      privateConnectionResourceId: map['privateConnectionResourceId'] == null ? null : map['privateConnectionResourceId'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      subresourceNames: map['subresourceNames'] == null ? null : (map['subresourceNames'] as List).cast<String>(),
    );
  }
}

