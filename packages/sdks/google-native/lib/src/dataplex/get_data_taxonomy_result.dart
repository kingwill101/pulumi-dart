// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataTaxonomy.
class GetDataTaxonomyResult {
  /// The number of attributes in the DataTaxonomy.
  final int? attributeCount;
  /// The number of classes in the DataTaxonomy.
  final int? classCount;
  /// The time when the DataTaxonomy was created.
  final String? createTime;
  /// Optional. Description of the DataTaxonomy.
  final String? description;
  /// Optional. User friendly display name.
  final String? displayName;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Optional. User-defined labels for the DataTaxonomy.
  final Map<String, String>? labels;
  /// The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{data_taxonomy_id}.
  final String? name;
  /// System generated globally unique ID for the dataTaxonomy. This ID will be different if the DataTaxonomy is deleted and re-created with the same name.
  final String? uid;
  /// The time when the DataTaxonomy was last updated.
  final String? updateTime;

  /// Creates a new [GetDataTaxonomyResult].
  /// [attributeCount] The number of attributes in the DataTaxonomy.
  /// [classCount] The number of classes in the DataTaxonomy.
  /// [createTime] The time when the DataTaxonomy was created.
  /// [description] Optional. Description of the DataTaxonomy.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User-defined labels for the DataTaxonomy.
  /// [name] The relative resource name of the DataTaxonomy, of the form: projects/{project_number}/locations/{location_id}/dataTaxonomies/{data_taxonomy_id}.
  /// [uid] System generated globally unique ID for the dataTaxonomy. This ID will be different if the DataTaxonomy is deleted and re-created with the same name.
  /// [updateTime] The time when the DataTaxonomy was last updated.
  const GetDataTaxonomyResult({
    this.attributeCount,
    this.classCount,
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeCount': ?attributeCount,
      'classCount': ?classCount,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetDataTaxonomyResult.fromMap(Map<String, dynamic> map) {
    return GetDataTaxonomyResult(
      attributeCount: (() { final guardedValue = map['attributeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      classCount: (() { final guardedValue = map['classCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
