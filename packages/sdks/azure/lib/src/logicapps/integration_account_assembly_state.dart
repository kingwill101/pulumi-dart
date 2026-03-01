// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationAccountAssembly resources.
class IntegrationAccountAssemblyState {
  /// The name of the Logic App Integration Account Assembly.
  final pulumi.Input<String>? assemblyName;
  /// The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`.
  final pulumi.Input<String>? assemblyVersion;
  /// The content of the Logic App Integration Account Assembly.
  final pulumi.Input<String>? content;
  /// The content link URI of the Logic App Integration Account Assembly.
  final pulumi.Input<String>? contentLinkUri;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// The metadata of the Logic App Integration Account Assembly.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountAssemblyState].
  /// [assemblyName] The name of the Logic App Integration Account Assembly.
  /// [assemblyVersion] The version of the Logic App Integration Account Assembly. Defaults to `0.0.0.0`.
  /// [content] The content of the Logic App Integration Account Assembly.
  /// [contentLinkUri] The content link URI of the Logic App Integration Account Assembly.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  /// [metadata] The metadata of the Logic App Integration Account Assembly.
  /// [name] The name which should be used for this Logic App Integration Account Assembly Artifact. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Assembly Artifact should exist. Changing this forces a new resource to be created.
  IntegrationAccountAssemblyState({
    pulumi.Output<String>? assemblyName,
    pulumi.Output<String>? assemblyVersion,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentLinkUri,
    pulumi.Output<String>? integrationAccountName,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      assemblyName = pulumi.Input.asOptionalInput<String>(assemblyName),
      assemblyVersion = pulumi.Input.asOptionalInput<String>(assemblyVersion),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentLinkUri = pulumi.Input.asOptionalInput<String>(contentLinkUri),
      integrationAccountName = pulumi.Input.asOptionalInput<String>(integrationAccountName),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assemblyName': ?assemblyName,
      'assemblyVersion': ?assemblyVersion,
      'content': ?content,
      'contentLinkUri': ?contentLinkUri,
      'integrationAccountName': ?integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountAssemblyState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAssemblyState(
      assemblyName: map['assemblyName'] == null ? null : pulumi.Output.create<String>(map['assemblyName'] as String),
      assemblyVersion: map['assemblyVersion'] == null ? null : pulumi.Output.create<String>(map['assemblyVersion'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentLinkUri: map['contentLinkUri'] == null ? null : pulumi.Output.create<String>(map['contentLinkUri'] as String),
      integrationAccountName: map['integrationAccountName'] == null ? null : pulumi.Output.create<String>(map['integrationAccountName'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

