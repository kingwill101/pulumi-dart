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
    pulumi.Output<String>? dataPlaneUri,
    pulumi.Output<String>? description,
    pulumi.Output<LoadTestEncryption>? encryption,
    pulumi.Output<LoadTestIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataPlaneUri = pulumi.Input.asOptionalInput<String>(dataPlaneUri),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryption = pulumi.Input.asOptionalInput<LoadTestEncryption>(encryption),
      identity = pulumi.Input.asOptionalInput<LoadTestIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dataPlaneUri: map['dataPlaneUri'] == null ? null : pulumi.Output.create<String>(map['dataPlaneUri'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<LoadTestEncryption>(LoadTestEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<LoadTestIdentity>(LoadTestIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

