// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustGatewayPacfile.
class GetZeroTrustGatewayPacfileResult {
  final String? accountId;
  /// Actual contents of the PAC file
  final String? contents;
  final String? createdAt;
  /// Detailed description of the PAC file.
  final String? description;
  /// The ID of this resource.
  final String? id;
  /// Name of the PAC file.
  final String? name;
  final String? pacfileId;
  /// URL-friendly version of the PAC file name.
  final String? slug;
  final String? updatedAt;
  /// Unique URL to download the PAC file.
  final String? url;

  /// Creates a new [GetZeroTrustGatewayPacfileResult].
  /// [accountId] Optional.
  /// [contents] Actual contents of the PAC file
  /// [createdAt] Optional.
  /// [description] Detailed description of the PAC file.
  /// [id] The ID of this resource.
  /// [name] Name of the PAC file.
  /// [pacfileId] Optional.
  /// [slug] URL-friendly version of the PAC file name.
  /// [updatedAt] Optional.
  /// [url] Unique URL to download the PAC file.
  const GetZeroTrustGatewayPacfileResult({
    this.accountId,
    this.contents,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.pacfileId,
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
      'id': ?id,
      'name': ?name,
      'pacfileId': ?pacfileId,
      'slug': ?slug,
      'updatedAt': ?updatedAt,
      'url': ?url,
    };
  }

  factory GetZeroTrustGatewayPacfileResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPacfileResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contents: (() { final guardedValue = map['contents']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pacfileId: (() { final guardedValue = map['pacfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slug: (() { final guardedValue = map['slug']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
