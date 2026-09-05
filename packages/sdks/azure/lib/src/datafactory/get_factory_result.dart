// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_factory_github_configuration.dart';
import 'get_factory_identity.dart';
import 'get_factory_vsts_configuration.dart';

/// Result data returned by getFactory.
class GetFactoryResult {
  /// A `githubConfiguration` block as defined below.
  final List<GetFactoryGithubConfiguration>? githubConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetFactoryIdentity>? identities;
  /// The Azure Region where the Azure Data Factory exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Azure Data Factory.
  final Map<String, String>? tags;
  /// A `vstsConfiguration` block as defined below.
  final List<GetFactoryVstsConfiguration>? vstsConfigurations;

  /// Creates a new [GetFactoryResult].
  /// [githubConfigurations] A `githubConfiguration` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Azure Data Factory exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Azure Data Factory.
  /// [vstsConfigurations] A `vstsConfiguration` block as defined below.
  const GetFactoryResult({
    this.githubConfigurations,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.vstsConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubConfigurations': ?(() { final guardedValue = githubConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFactoryGithubConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFactoryIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'vstsConfigurations': ?(() { final guardedValue = vstsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFactoryVstsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFactoryResult.fromMap(Map<String, dynamic> map) {
    return GetFactoryResult(
      githubConfigurations: (() { final guardedValue = map['githubConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFactoryGithubConfiguration>(guardedValue, (value) => GetFactoryGithubConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFactoryIdentity>(guardedValue, (value) => GetFactoryIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vstsConfigurations: (() { final guardedValue = map['vstsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFactoryVstsConfiguration>(guardedValue, (value) => GetFactoryVstsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
