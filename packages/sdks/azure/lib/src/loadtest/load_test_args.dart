// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_test_encryption.dart';
import 'load_test_identity.dart';

/// {@template pulumi_loadtest_load_test_load_test_args_doc}
/// The set of arguments for LoadTest.
/// {@endtemplate}
/// {@macro pulumi_loadtest_load_test_load_test_args_doc}
class LoadTestArgs {
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// An `encryption` block as defined below. Changing this forces a new Load Test to be created.
  final pulumi.Input<LoadTestEncryption>? encryption;
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Load Test.
  final pulumi.Input<LoadTestIdentity>? identity;
  /// The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Load Test. Changing this forces a new Load Test to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Load Test.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LoadTestArgs].
  /// [description] Description of the resource.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new Load Test to be created.
  /// [identity] An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Load Test.
  /// [location] The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created.
  /// [name] Specifies the name of this Load Test. Changing this forces a new Load Test to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created.
  /// [tags] A mapping of tags which should be assigned to the Load Test.
  LoadTestArgs({
    this.description,
    this.encryption,
    this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<LoadTestEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<LoadTestIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LoadTestArgs.fromMap(Map<String, dynamic> map) {
    return LoadTestArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryption: map['encryption'] == null ? null : (LoadTestEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (LoadTestIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

