// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataset.
class GetDatasetHealthcareV1beta1Result {
  /// Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  final String name;
  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  final String timeZone;

  /// Creates a new [GetDatasetHealthcareV1beta1Result].
  /// [name] Resource name of the dataset, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// [timeZone] The default timezone used by this dataset. Must be a either a valid IANA time zone name such as "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources, such as HL7 messages, where no explicit timezone is specified.
  const GetDatasetHealthcareV1beta1Result({
    required this.name,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'timeZone': timeZone,
    };
  }

  factory GetDatasetHealthcareV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetDatasetHealthcareV1beta1Result(
      name: map['name'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}

