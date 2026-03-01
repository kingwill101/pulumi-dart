// ignore_for_file: unused_element, unnecessary_cast


/// Contains details of the listing publisher.
class PublisherAnalyticshubV1beta1 {
  /// Optional. Name of the listing publisher.
  final String? name;
  /// Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  final String? primaryContact;

  /// Creates a new [PublisherAnalyticshubV1beta1].
  /// [name] Optional. Name of the listing publisher.
  /// [primaryContact] Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
  PublisherAnalyticshubV1beta1({
    this.name,
    this.primaryContact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'primaryContact': ?primaryContact,
    };
  }

  factory PublisherAnalyticshubV1beta1.fromMap(Map<String, dynamic> map) {
    return PublisherAnalyticshubV1beta1(
      name: map['name'] == null ? null : map['name'] as String,
      primaryContact: map['primaryContact'] == null ? null : map['primaryContact'] as String,
    );
  }
}

