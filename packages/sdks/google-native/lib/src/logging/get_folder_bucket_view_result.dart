// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolderBucketView.
class GetFolderBucketViewResult {
  /// The creation timestamp of the view.
  final String? createTime;
  /// Describes this view.
  final String? description;
  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final String? filter;
  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final String? name;
  /// The last update timestamp of the view.
  final String? updateTime;

  /// Creates a new [GetFolderBucketViewResult].
  /// [createTime] The creation timestamp of the view.
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [name] The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  /// [updateTime] The last update timestamp of the view.
  const GetFolderBucketViewResult({
    this.createTime,
    this.description,
    this.filter,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'filter': ?filter,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetFolderBucketViewResult.fromMap(Map<String, dynamic> map) {
    return GetFolderBucketViewResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
