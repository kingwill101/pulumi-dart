// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_certificate_location.dart';

/// {@template pulumi_web_web_app_public_certificate_args_doc}
/// The set of arguments for WebAppPublicCertificate.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_public_certificate_args_doc}
class WebAppPublicCertificateArgs {
  /// Public Certificate byte array
  final pulumi.Input<String>? blob;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Public Certificate Location
  final pulumi.Input<PublicCertificateLocation>? publicCertificateLocation;
  /// Public certificate name.
  final pulumi.Input<String>? publicCertificateName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppPublicCertificateArgs].
  /// [blob] Public Certificate byte array
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [publicCertificateLocation] Public Certificate Location
  /// [publicCertificateName] Public certificate name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppPublicCertificateArgs({
    this.blob,
    this.kind,
    required this.name,
    this.publicCertificateLocation,
    this.publicCertificateName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blob': ?blob,
      'kind': ?kind,
      'name': name,
      'publicCertificateLocation': ?pulumi.Input.mapOptionalInputValue<PublicCertificateLocation, String>(publicCertificateLocation, (value) => value.value),
      'publicCertificateName': ?publicCertificateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppPublicCertificateArgs.fromMap(Map<String, dynamic> map) {
    return WebAppPublicCertificateArgs(
      blob: map['blob'] == null ? null : (map['blob'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      publicCertificateLocation: map['publicCertificateLocation'] == null ? null : (PublicCertificateLocation.fromValue(map['publicCertificateLocation'] as String)).input(),
      publicCertificateName: map['publicCertificateName'] == null ? null : (map['publicCertificateName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

