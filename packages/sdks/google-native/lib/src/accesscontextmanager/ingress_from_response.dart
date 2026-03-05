// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_source_response.dart';

/// Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.
class IngressFromResponse {
  /// A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
  final pulumi.Input<List<String>> identities;
  /// Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  final pulumi.Input<String> identityType;
  /// Sources that this IngressPolicy authorizes access from.
  final pulumi.Input<List<IngressSourceResponse>> sources;

  /// Creates a new [IngressFromResponse].
  /// [identities] A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
  /// [identityType] Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  /// [sources] Sources that this IngressPolicy authorizes access from.
  IngressFromResponse({
    required this.identities,
    required this.identityType,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': identities,
      'identityType': identityType,
      'sources': pulumi.Input.mapInputValue<List<IngressSourceResponse>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<IngressSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IngressFromResponse.fromMap(Map<String, dynamic> map) {
    return IngressFromResponse(
      identities: pulumi.Input.fromValue((map['identities'] as List).cast<String>()),
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<IngressSourceResponse>(map['sources']!, (value) => IngressSourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

