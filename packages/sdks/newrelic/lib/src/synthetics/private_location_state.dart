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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? guid,
    pulumi.Output<String>? key,
    pulumi.Output<String>? locationId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? verifiedScriptExecution,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      key = pulumi.Input.asOptionalInput<String>(key),
      locationId = pulumi.Input.asOptionalInput<String>(locationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      verifiedScriptExecution = pulumi.Input.asOptionalInput<bool>(verifiedScriptExecution);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      locationId: map['locationId'] == null ? null : pulumi.Output.create<String>(map['locationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      verifiedScriptExecution: map['verifiedScriptExecution'] == null ? null : pulumi.Output.create<bool>(map['verifiedScriptExecution'] as bool),
    );
  }
}

