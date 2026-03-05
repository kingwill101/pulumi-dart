// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDataset.
class GetDatasetResult {
  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  final String name;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  final String timeZone;

  /// Creates a new [GetDatasetResult].
  /// [name] Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// [timeZone] The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  GetDatasetResult({required this.name, required this.timeZone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'timeZone': timeZone};
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      name: map['name'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}
