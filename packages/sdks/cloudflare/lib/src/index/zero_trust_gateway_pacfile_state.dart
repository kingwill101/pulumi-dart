// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustGatewayPacfile resources.
class ZeroTrustGatewayPacfileState {
  final pulumi.Input<String?>? accountId;
  /// Actual contents of the PAC file
  final pulumi.Input<String?>? contents;
  final pulumi.Input<String?>? createdAt;
  /// Detailed description of the PAC file.
  final pulumi.Input<String?>? description;
  /// Name of the PAC file.
  final pulumi.Input<String?>? name;
  /// URL-friendly version of the PAC file name. If not provided, it will be auto-generated
  final pulumi.Input<String?>? slug;
  final pulumi.Input<String?>? updatedAt;
  /// Unique URL to download the PAC file.
  final pulumi.Input<String?>? url;

  /// Creates a new [ZeroTrustGatewayPacfileState].
  /// [accountId] Optional.
  /// [contents] Actual contents of the PAC file
  /// [createdAt] Optional.
  /// [description] Detailed description of the PAC file.
  /// [name] Name of the PAC file.
  /// [slug] URL-friendly version of the PAC file name. If not provided, it will be auto-generated
  /// [updatedAt] Optional.
  /// [url] Unique URL to download the PAC file.
  const ZeroTrustGatewayPacfileState({
    this.accountId,
    this.contents,
    this.createdAt,
    this.description,
    this.name,
    this.slug,
    this.updatedAt,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'contents': ?contents,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
      'slug': ?slug,
      'updatedAt': ?updatedAt,
      'url': ?url,
    };
  }

  factory ZeroTrustGatewayPacfileState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPacfileState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contents: (() { final guardedValue = map['contents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slug: (() { final guardedValue = map['slug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
