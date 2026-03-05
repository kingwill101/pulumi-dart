import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info_response_jobs_v4.dart';
import 'compensation_info_response_jobs_v4.dart';
import 'job_derived_info_response_jobs_v4.dart';
import 'job_jobs_v4_args.dart';
import 'processing_options_response_jobs_v4.dart';

/// Creates a new job. Typically, the job becomes searchable within 10 seconds, but it may take up to 5 minutes.
class JobJobsV4 extends pulumi.CustomResource {
  /// Strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', and so on.) as multiple jobs with the same company, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  late final pulumi.Output<List<String>> addresses;

  /// Job application information.
  late final pulumi.Output<ApplicationInfoResponseJobsV4> applicationInfo;

  /// The resource name of the company listing the job. The format is "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}". For example, "projects/foo/tenants/bar/companies/baz".
  late final pulumi.Output<String> company;

  /// Display name of the company listing the job.
  late final pulumi.Output<String> companyDisplayName;

  /// Job compensation information (a.k.a. "pay rate") i.e., the compensation that will paid to the employee.
  late final pulumi.Output<CompensationInfoResponseJobsV4> compensationInfo;

  /// A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: `a-zA-Z*`. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  late final pulumi.Output<Map<String, String>> customAttributes;

  /// The desired education degrees for the job, such as Bachelors, Masters.
  late final pulumi.Output<List<String>> degreeTypes;

  /// The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  late final pulumi.Output<String> department;

  /// Derived details about the job posting.
  late final pulumi.Output<JobDerivedInfoResponseJobsV4> derivedInfo;

  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  late final pulumi.Output<String> description;

  /// The employment type(s) of a job, for example, full time or part time.
  late final pulumi.Output<List<String>> employmentTypes;

  /// A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  late final pulumi.Output<String> incentives;

  /// The benefits included with the job.
  late final pulumi.Output<List<String>> jobBenefits;

  /// The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  late final pulumi.Output<String> jobEndTime;

  /// The experience level associated with the job, such as "Entry Level".
  late final pulumi.Output<String> jobLevel;

  /// The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  late final pulumi.Output<String> jobStartTime;

  /// The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  late final pulumi.Output<String> languageCode;

  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example, "projects/foo/tenants/bar/jobs/baz". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  late final pulumi.Output<String> name;

  /// The timestamp when this job posting was created.
  late final pulumi.Output<String> postingCreateTime;

  /// Strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be listed by the ListJobs API, but it can be retrieved with the GetJob API or updated with the UpdateJob API or deleted with the DeleteJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum number of open jobs over previous 7 days. If this threshold is exceeded, expired jobs are cleaned out in order of earliest expire time. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. If the timestamp is before the instant request is made, the job is treated as expired immediately on creation. This kind of job can not be updated. And when creating a job with past timestamp, the posting_publish_time must be set before posting_expire_time. The purpose of this feature is to allow other objects, such as Application, to refer a job that didn't exist in the system prior to becoming expired. If you want to modify a job that was expired on creation, delete it and create a new one. If this value isn't provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value isn't provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include job_end_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  late final pulumi.Output<String> postingExpireTime;

  /// The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  late final pulumi.Output<String> postingPublishTime;

  /// The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  late final pulumi.Output<String> postingRegion;

  /// The timestamp when this job posting was last updated.
  late final pulumi.Output<String> postingUpdateTime;

  /// Options for job processing.
  late final pulumi.Output<ProcessingOptionsResponseJobsV4> processingOptions;
  late final pulumi.Output<String> project;

  /// A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue &gt;0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  late final pulumi.Output<int> promotionValue;

  /// A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  late final pulumi.Output<String> qualifications;

  /// The requisition ID, also referred to as the posting ID, is assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job isn't allowed to be created if there is another job with the same company, language_code and requisition_id. The maximum number of allowed characters is 255.
  late final pulumi.Output<String> requisitionId;

  /// A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  late final pulumi.Output<String> responsibilities;
  late final pulumi.Output<String> tenantId;

  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  late final pulumi.Output<String> title;

  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  late final pulumi.Output<String> visibility;

  /// Creates a new [JobJobsV4].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobJobsV4]. {@macro pulumi_jobs_v4_job_jobs_v4_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobJobsV4(
    String name, {
    JobJobsV4Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:jobs/v4:Job',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addresses = registerOutput<List<String>>('addresses');
    applicationInfo = registerOutput<ApplicationInfoResponseJobsV4>(
      'applicationInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApplicationInfoResponseJobsV4.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    company = registerOutput<String>('company');
    companyDisplayName = registerOutput<String>('companyDisplayName');
    compensationInfo = registerOutput<CompensationInfoResponseJobsV4>(
      'compensationInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CompensationInfoResponseJobsV4.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customAttributes = registerOutput<Map<String, String>>('customAttributes');
    degreeTypes = registerOutput<List<String>>('degreeTypes');
    department = registerOutput<String>('department');
    derivedInfo = registerOutput<JobDerivedInfoResponseJobsV4>(
      'derivedInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobDerivedInfoResponseJobsV4.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String>('description');
    employmentTypes = registerOutput<List<String>>('employmentTypes');
    incentives = registerOutput<String>('incentives');
    jobBenefits = registerOutput<List<String>>('jobBenefits');
    jobEndTime = registerOutput<String>('jobEndTime');
    jobLevel = registerOutput<String>('jobLevel');
    jobStartTime = registerOutput<String>('jobStartTime');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    postingCreateTime = registerOutput<String>('postingCreateTime');
    postingExpireTime = registerOutput<String>('postingExpireTime');
    postingPublishTime = registerOutput<String>('postingPublishTime');
    postingRegion = registerOutput<String>('postingRegion');
    postingUpdateTime = registerOutput<String>('postingUpdateTime');
    processingOptions = registerOutput<ProcessingOptionsResponseJobsV4>(
      'processingOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProcessingOptionsResponseJobsV4.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    promotionValue = registerOutput<int>('promotionValue');
    qualifications = registerOutput<String>('qualifications');
    requisitionId = registerOutput<String>('requisitionId');
    responsibilities = registerOutput<String>('responsibilities');
    tenantId = registerOutput<String>('tenantId');
    title = registerOutput<String>('title');
    visibility = registerOutput<String>('visibility');
  }
}
