// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_test_encryption.dart';
import 'load_test_identity.dart';

/// Input properties used for looking up and filtering LoadTest resources.
class LoadTestState {
  /// Resource data plane URI.
  final pulumi.Input<String>? dataPlaneUri;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Load Test.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LoadTestState].
  /// [dataPlaneUri] Resource data plane URI.
  /// [description] Description of the resource.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new Load Test to be created.
  /// [identity] An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Load Test.
  /// [location] The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created.
  /// [name] Specifies the name of this Load Test. Changing this forces a new Load Test to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created.
  /// [tags] A mapping of tags which should be assigned to the Load Test.
  LoadTestState({
    this.dataPlaneUri,
    this.description,
    this.encryption,
    this.identity,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneUri': ?dataPlaneUri,
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<LoadTestEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<LoadTestIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LoadTestState.fromMap(Map<String, dynamic> map) {
    return LoadTestState(
      dataPlaneUri: map['dataPlaneUri'] == null ? null : (map['dataPlaneUri']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryption: map['encryption'] == null ? null : (LoadTestEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (LoadTestIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

