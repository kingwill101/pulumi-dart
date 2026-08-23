// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_required_permissions.dart';

/// The resource provider details include the required permissions for the user to create connections.
/// The user should have the required permissions(Read\Write, ..) in the specified scope ProviderPermissionsScope against the specified resource provider.
class ConnectorDefinitionsResourceProvider {
  /// Gets or sets the permissions description text.
  final pulumi.Input<String> permissionsDisplayText;
  /// Gets or sets the provider name.
  final pulumi.Input<String> provider;
  /// Gets or sets the permissions provider display name.
  final pulumi.Input<String> providerDisplayName;
  /// Required permissions for the connector resource provider that define in ResourceProviders.
  /// For more information about the permissions see &lt;see href="https://docs.microsoft.com/en-us/azure/role-based-access-control/role-definitions#actions-format"&gt;here&lt;/see&gt;.
  final pulumi.Input<ResourceProviderRequiredPermissions> requiredPermissions;
  /// The scope on which the user should have permissions, in order to be able to create connections.
  final pulumi.Input<String> scope;

  /// Creates a new [ConnectorDefinitionsResourceProvider].
  /// [permissionsDisplayText] Gets or sets the permissions description text.
  /// [provider] Gets or sets the provider name.
  /// [providerDisplayName] Gets or sets the permissions provider display name.
  /// [requiredPermissions] Required permissions for the connector resource provider that define in ResourceProviders.
  /// [scope] The scope on which the user should have permissions, in order to be able to create connections.
  const ConnectorDefinitionsResourceProvider({
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
      'requiredPermissions': pulumi.Input.mapInputValue<ResourceProviderRequiredPermissions, Map<String, dynamic>>(requiredPermissions, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory ConnectorDefinitionsResourceProvider.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsResourceProvider(
      permissionsDisplayText: pulumi.Input.fromValue(map['permissionsDisplayText'] as String),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      providerDisplayName: pulumi.Input.fromValue(map['providerDisplayName'] as String),
      requiredPermissions: pulumi.Input.fromValue(ResourceProviderRequiredPermissions.fromMap((map['requiredPermissions']! as Map).cast<String, dynamic>())),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
