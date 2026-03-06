// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_factory_github_configuration.dart';
import 'get_factory_identity.dart';
import 'get_factory_vsts_configuration.dart';

/// Result data returned by getFactory.
class GetFactoryResult {
  /// A `github_configuration` block as defined below.
  final List<GetFactoryGithubConfiguration> githubConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetFactoryIdentity> identities;
  /// The Azure Region where the Azure Data Factory exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Azure Data Factory.
  final Map<String, String> tags;
  /// A `vsts_configuration` block as defined below.
  final List<GetFactoryVstsConfiguration> vstsConfigurations;

  /// Creates a new [GetFactoryResult].
  /// [githubConfigurations] A `github_configuration` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Azure Data Factory exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Azure Data Factory.
  /// [vstsConfigurations] A `vsts_configuration` block as defined below.
  const GetFactoryResult({
    required this.githubConfigurations,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.vstsConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubConfigurations': pulumi.Input.encodeList<GetFactoryGithubConfiguration, Map<String, dynamic>>(githubConfigurations, (value) => value.toMap()),
      'id': id,
      'identities': pulumi.Input.encodeList<GetFactoryIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'vstsConfigurations': pulumi.Input.encodeList<GetFactoryVstsConfiguration, Map<String, dynamic>>(vstsConfigurations, (value) => value.toMap()),
    };
  }

  factory GetFactoryResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryResult(
      githubConfigurations: pulumi.Input.decodeList<GetFactoryGithubConfiguration>(map['githubConfigurations']!, (value) => GetFactoryGithubConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetFactoryIdentity>(map['identities']!, (value) => GetFactoryIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vstsConfigurations: pulumi.Input.decodeList<GetFactoryVstsConfiguration>(map['vstsConfigurations']!, (value) => GetFactoryVstsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

