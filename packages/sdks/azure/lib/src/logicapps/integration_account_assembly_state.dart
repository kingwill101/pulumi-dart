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
    this.assemblyName,
    this.assemblyVersion,
    this.content,
    this.contentLinkUri,
    this.integrationAccountName,
    this.metadata,
    this.name,
    this.resourceGroupName,
  });

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
      assemblyName: map['assemblyName'] == null ? null : (map['assemblyName']! as String).input(),
      assemblyVersion: map['assemblyVersion'] == null ? null : (map['assemblyVersion']! as String).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      contentLinkUri: map['contentLinkUri'] == null ? null : (map['contentLinkUri']! as String).input(),
      integrationAccountName: map['integrationAccountName'] == null ? null : (map['integrationAccountName']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

