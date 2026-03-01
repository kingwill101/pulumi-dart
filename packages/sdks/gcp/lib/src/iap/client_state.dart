// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Client resources.
class ClientState {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String>? brand;
  /// Output only. Unique identifier of the OAuth client.
  final pulumi.Input<String>? clientId;
  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String>? displayName;
  /// Output only. Client secret of the OAuth client.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secret;

  /// Creates a new [ClientState].
  /// [brand] Identifier of the brand to which this client
  /// [clientId] Output only. Unique identifier of the OAuth client.
  /// [displayName] Human-friendly name given to the OAuth client.
  /// [secret] Output only. Client secret of the OAuth client.
  ClientState({
    pulumi.Output<String>? brand,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? secret,
  }) :
      brand = pulumi.Input.asOptionalInput<String>(brand),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      secret = pulumi.Input.asOptionalInput<String>(secret);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': ?brand,
      'clientId': ?clientId,
      'displayName': ?displayName,
      'secret': ?secret,
    };
  }

  factory ClientState.fromMap(Map<String, dynamic> map) {
    return ClientState(
      brand: map['brand'] == null ? null : pulumi.Output.create<String>(map['brand'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      secret: map['secret'] == null ? null : pulumi.Output.create<String>(map['secret'] as String),
    );
  }
}

