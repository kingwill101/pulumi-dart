/// Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
enum JobPostingRegion {
  postingRegionUnspecified("POSTING_REGION_UNSPECIFIED"),
  administrativeArea("ADMINISTRATIVE_AREA"),
  nation("NATION"),
  telecommute("TELECOMMUTE");

  const JobPostingRegion(this.value);
  final String value;

  static JobPostingRegion fromValue(String value) {
    for (final item in JobPostingRegion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobPostingRegion value: $value');
  }
}

