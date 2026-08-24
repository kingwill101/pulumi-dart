// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_gateway_pacfile_zero_trust_gateway_pacfile_args_doc}
/// The set of arguments for ZeroTrustGatewayPacfile.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_gateway_pacfile_zero_trust_gateway_pacfile_args_doc}
class ZeroTrustGatewayPacfileArgs {
  final pulumi.Input<String> accountId;
  /// Actual contents of the PAC file
  final pulumi.Input<String> contents;
  /// Detailed description of the PAC file.
  final pulumi.Input<String?>? description;
  /// Name of the PAC file.
  final pulumi.Input<String> name;
  /// URL-friendly version of the PAC file name. If not provided, it will be auto-generated
  final pulumi.Input<String?>? slug;

  /// Creates a new [ZeroTrustGatewayPacfileArgs].
  /// [accountId] Required.
  /// [contents] Actual contents of the PAC file
  /// [description] Detailed description of the PAC file.
  /// [name] Name of the PAC file.
  /// [slug] URL-friendly version of the PAC file name. If not provided, it will be auto-generated
  const ZeroTrustGatewayPacfileArgs({
    required this.accountId,
    required this.contents,
    this.description,
    required this.name,
    this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'contents': contents,
      'description': ?description,
      'name': name,
      'slug': ?slug,
    };
  }

  factory ZeroTrustGatewayPacfileArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPacfileArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      contents: pulumi.Input.fromValue(map['contents'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      slug: (() { final guardedValue = map['slug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
