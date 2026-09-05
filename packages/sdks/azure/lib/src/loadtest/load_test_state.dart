// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_test_encryption.dart';
import 'load_test_identity.dart';

/// Input properties used for looking up and filtering LoadTest resources.
class LoadTestState {
  /// Resource data plane URI.
  final pulumi.Input<String?>? dataPlaneUri;
  /// Description of the resource.
  final pulumi.Input<String?>? description;
  /// An `encryption` block as defined below. Changing this forces a new Load Test to be created.
  final pulumi.Input<LoadTestEncryption?>? encryption;
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Load Test.
  final pulumi.Input<LoadTestIdentity?>? identity;
  /// The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of this Load Test. Changing this forces a new Load Test to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Load Test.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LoadTestState].
  /// [dataPlaneUri] Resource data plane URI.
  /// [description] Description of the resource.
  /// [encryption] An `encryption` block as defined below. Changing this forces a new Load Test to be created.
  /// [identity] An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Load Test.
  /// [location] The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created.
  /// [name] Specifies the name of this Load Test. Changing this forces a new Load Test to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created.
  /// [tags] A mapping of tags which should be assigned to the Load Test.
  const LoadTestState({
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
      dataPlaneUri: (() { final guardedValue = map['dataPlaneUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadTestEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadTestIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
