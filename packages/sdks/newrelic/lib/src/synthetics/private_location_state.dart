// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateLocation resources.
class PrivateLocationState {
  /// The account in which the private location will be created.
  final pulumi.Input<String>? accountId;
  /// The private location description.
  final pulumi.Input<String>? description;
  /// The private location globally unique identifier.
  final pulumi.Input<String>? domainId;
  /// The unique client identifier for the private location in New Relic. Same as `id`.
  final pulumi.Input<String>? guid;
  /// The private locations key.
  final pulumi.Input<String>? key;
  /// An alternate identifier based on name.
  final pulumi.Input<String>? locationId;
  /// The name of the private location.
  final pulumi.Input<String>? name;
  /// The private location requires a password to edit if value is true. Defaults to `false`
  final pulumi.Input<bool>? verifiedScriptExecution;

  /// Creates a new [PrivateLocationState].
  /// [accountId] The account in which the private location will be created.
  /// [description] The private location description.
  /// [domainId] The private location globally unique identifier.
  /// [guid] The unique client identifier for the private location in New Relic. Same as `id`.
  /// [key] The private locations key.
  /// [locationId] An alternate identifier based on name.
  /// [name] The name of the private location.
  /// [verifiedScriptExecution] The private location requires a password to edit if value is true. Defaults to `false`
  PrivateLocationState({
    this.accountId,
    this.description,
    this.domainId,
    this.guid,
    this.key,
    this.locationId,
    this.name,
    this.verifiedScriptExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'domainId': ?domainId,
      'guid': ?guid,
      'key': ?key,
      'locationId': ?locationId,
      'name': ?name,
      'verifiedScriptExecution': ?verifiedScriptExecution,
    };
  }

  factory PrivateLocationState.fromMap(Map<String, dynamic> map) {
    return PrivateLocationState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      guid: map['guid'] == null ? null : (map['guid'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      locationId: map['locationId'] == null ? null : (map['locationId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      verifiedScriptExecution: map['verifiedScriptExecution'] == null ? null : (map['verifiedScriptExecution'] as bool).input(),
    );
  }
}

