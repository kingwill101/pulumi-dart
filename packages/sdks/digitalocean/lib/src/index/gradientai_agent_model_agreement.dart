// ignore_for_file: unused_element, unnecessary_cast


class GradientaiAgentModelAgreement {
  /// Description of the agreement
  final String? description;
  /// Name of the agreement
  final String? name;
  /// URL of the agreement
  final String? url;
  /// UUID of the agreement
  final String? uuid;

  /// Creates a new [GradientaiAgentModelAgreement].
  /// [description] Description of the agreement
  /// [name] Name of the agreement
  /// [url] URL of the agreement
  /// [uuid] UUID of the agreement
  GradientaiAgentModelAgreement({
    this.description,
    this.name,
    this.url,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'url': ?url,
      'uuid': ?uuid,
    };
  }

  factory GradientaiAgentModelAgreement.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentModelAgreement(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

