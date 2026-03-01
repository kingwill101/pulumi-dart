// ignore_for_file: unused_element, unnecessary_cast

import 'resource_provider_required_permissions_response.dart';

/// The resource provider details include the required permissions for the user to create connections.
/// The user should have the required permissions(Read\Write, ..) in the specified scope ProviderPermissionsScope against the specified resource provider.
class ConnectorDefinitionsResourceProviderResponse {
  /// Gets or sets the permissions description text.
  final String permissionsDisplayText;
  /// Gets or sets the provider name.
  final String provider;
  /// Gets or sets the permissions provider display name.
  final String providerDisplayName;
  /// Required permissions for the connector resource provider that define in ResourceProviders.
  /// For more information about the permissions see <see href="https://docs.microsoft.com/en-us/azure/role-based-access-control/role-definitions#actions-format">here</see>.
  final ResourceProviderRequiredPermissionsResponse requiredPermissions;
  /// The scope on which the user should have permissions, in order to be able to create connections.
  final String scope;

  /// Creates a new [ConnectorDefinitionsResourceProviderResponse].
  /// [permissionsDisplayText] Gets or sets the permissions description text.
  /// [provider] Gets or sets the provider name.
  /// [providerDisplayName] Gets or sets the permissions provider display name.
  /// [requiredPermissions] Required permissions for the connector resource provider that define in ResourceProviders.
  /// [scope] The scope on which the user should have permissions, in order to be able to create connections.
  ConnectorDefinitionsResourceProviderResponse({
    required this.permissionsDisplayText,
    required this.provider,
    required this.providerDisplayName,
    required this.requiredPermissions,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionsDisplayText': permissionsDisplayText,
      'provider': provider,
      'providerDisplayName': providerDisplayName,
      'requiredPermissions': requiredPermissions.toMap(),
      'scope': scope,
    };
  }

  factory ConnectorDefinitionsResourceProviderResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsResourceProviderResponse(
      permissionsDisplayText: map['permissionsDisplayText'] as String,
      provider: map['provider'] as String,
      providerDisplayName: map['providerDisplayName'] as String,
      requiredPermissions: ResourceProviderRequiredPermissionsResponse.fromMap((map['requiredPermissions'] as Map).cast<String, dynamic>()),
      scope: map['scope'] as String,
    );
  }
}

