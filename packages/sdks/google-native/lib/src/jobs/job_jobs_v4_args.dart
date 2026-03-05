// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info_jobs_v4.dart';
import 'compensation_info_jobs_v4.dart';
import 'job_degree_types_item_jobs_v4.dart';
import 'job_employment_types_item_jobs_v4.dart';
import 'job_job_benefits_item_jobs_v4.dart';
import 'job_job_level_jobs_v4.dart';
import 'job_posting_region_jobs_v4.dart';
import 'job_visibility_jobs_v4.dart';
import 'processing_options_jobs_v4.dart';

/// {@template pulumi_jobs_v4_job_jobs_v4_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_jobs_v4_job_jobs_v4_args_doc}
class JobJobsV4Args {
  /// Strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', and so on.) as multiple jobs with the same company, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  final pulumi.Input<List<String>>? addresses;
  /// Job application information.
  final pulumi.Input<ApplicationInfoJobsV4>? applicationInfo;
  /// The resource name of the company listing the job. The format is "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}". For example, "projects/foo/tenants/bar/companies/baz".
  final pulumi.Input<String> company;
  /// Job compensation information (a.k.a. "pay rate") i.e., the compensation that will paid to the employee.
  final pulumi.Input<CompensationInfoJobsV4>? compensationInfo;
  /// A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: `a-zA-Z*`. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  final pulumi.Input<Map<String, String>>? customAttributes;
  /// The desired education degrees for the job, such as Bachelors, Masters.
  final pulumi.Input<List<JobDegreeTypesItemJobsV4>>? degreeTypes;
  /// The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  final pulumi.Input<String>? department;
  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  final pulumi.Input<String> description;
  /// The employment type(s) of a job, for example, full time or part time.
  final pulumi.Input<List<JobEmploymentTypesItemJobsV4>>? employmentTypes;
  /// A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? incentives;
  /// The benefits included with the job.
  final pulumi.Input<List<JobJobBenefitsItemJobsV4>>? jobBenefits;
  /// The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final pulumi.Input<String>? jobEndTime;
  /// The experience level associated with the job, such as "Entry Level".
  final pulumi.Input<JobJobLevelJobsV4>? jobLevel;
  /// The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final pulumi.Input<String>? jobStartTime;
  /// The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  final pulumi.Input<String>? languageCode;
  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example, "projects/foo/tenants/bar/jobs/baz". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  final pulumi.Input<String>? name;
  /// Strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be listed by the ListJobs API, but it can be retrieved with the GetJob API or updated with the UpdateJob API or deleted with the DeleteJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum number of open jobs over previous 7 days. If this threshold is exceeded, expired jobs are cleaned out in order of earliest expire time. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. If the timestamp is before the instant request is made, the job is treated as expired immediately on creation. This kind of job can not be updated. And when creating a job with past timestamp, the posting_publish_time must be set before posting_expire_time. The purpose of this feature is to allow other objects, such as Application, to refer a job that didn't exist in the system prior to becoming expired. If you want to modify a job that was expired on creation, delete it and create a new one. If this value isn't provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value isn't provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include job_end_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  final pulumi.Input<String>? postingExpireTime;
  /// The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  final pulumi.Input<String>? postingPublishTime;
  /// The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  final pulumi.Input<JobPostingRegionJobsV4>? postingRegion;
  /// Options for job processing.
  final pulumi.Input<ProcessingOptionsJobsV4>? processingOptions;
  final pulumi.Input<String>? project;
  /// A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue &gt;0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  final pulumi.Input<int>? promotionValue;
  /// A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? qualifications;
  /// The requisition ID, also referred to as the posting ID, is assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job isn't allowed to be created if there is another job with the same company, language_code and requisition_id. The maximum number of allowed characters is 255.
  final pulumi.Input<String> requisitionId;
  /// A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? responsibilities;
  final pulumi.Input<String> tenantId;
  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  final pulumi.Input<String> title;
  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  final pulumi.Input<JobVisibilityJobsV4>? visibility;

  /// Creates a new [JobJobsV4Args].
  /// [addresses] Strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', and so on.) as multiple jobs with the same company, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  /// [applicationInfo] Job application information.
  /// [company] The resource name of the company listing the job. The format is "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}". For example, "projects/foo/tenants/bar/companies/baz".
  /// [compensationInfo] Job compensation information (a.k.a. "pay rate") i.e., the compensation that will paid to the employee.
  /// [customAttributes] A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: `a-zA-Z*`. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  /// [degreeTypes] The desired education degrees for the job, such as Bachelors, Masters.
  /// [department] The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  /// [description] The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  /// [employmentTypes] The employment type(s) of a job, for example, full time or part time.
  /// [incentives] A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  /// [jobBenefits] The benefits included with the job.
  /// [jobEndTime] The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  /// [jobLevel] The experience level associated with the job, such as "Entry Level".
  /// [jobStartTime] The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  /// [languageCode] The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  /// [name] Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example, "projects/foo/tenants/bar/jobs/baz". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  /// [postingExpireTime] Strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be listed by the ListJobs API, but it can be retrieved with the GetJob API or updated with the UpdateJob API or deleted with the DeleteJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum number of open jobs over previous 7 days. If this threshold is exceeded, expired jobs are cleaned out in order of earliest expire time. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. If the timestamp is before the instant request is made, the job is treated as expired immediately on creation. This kind of job can not be updated. And when creating a job with past timestamp, the posting_publish_time must be set before posting_expire_time. The purpose of this feature is to allow other objects, such as Application, to refer a job that didn't exist in the system prior to becoming expired. If you want to modify a job that was expired on creation, delete it and create a new one. If this value isn't provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value isn't provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include job_end_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  /// [postingPublishTime] The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  /// [postingRegion] The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  /// [processingOptions] Options for job processing.
  /// [project] Optional.
  /// [promotionValue] A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue &gt;0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  /// [qualifications] A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  /// [requisitionId] The requisition ID, also referred to as the posting ID, is assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job isn't allowed to be created if there is another job with the same company, language_code and requisition_id. The maximum number of allowed characters is 255.
  /// [responsibilities] A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  /// [tenantId] Required.
  /// [title] The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  /// [visibility] Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  JobJobsV4Args({
    this.addresses,
    this.applicationInfo,
    required this.company,
    this.compensationInfo,
    this.customAttributes,
    this.degreeTypes,
    this.department,
    required this.description,
    this.employmentTypes,
    this.incentives,
    this.jobBenefits,
    this.jobEndTime,
    this.jobLevel,
    this.jobStartTime,
    this.languageCode,
    this.name,
    this.postingExpireTime,
    this.postingPublishTime,
    this.postingRegion,
    this.processingOptions,
    this.project,
    this.promotionValue,
    this.qualifications,
    required this.requisitionId,
    this.responsibilities,
    required this.tenantId,
    required this.title,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'applicationInfo': ?pulumi.Input.mapOptionalInputValue<ApplicationInfoJobsV4, Map<String, dynamic>>(applicationInfo, (value) => value.toMap()),
      'company': company,
      'compensationInfo': ?pulumi.Input.mapOptionalInputValue<CompensationInfoJobsV4, Map<String, dynamic>>(compensationInfo, (value) => value.toMap()),
      'customAttributes': ?customAttributes,
      'degreeTypes': ?pulumi.Input.mapOptionalInputValue<List<JobDegreeTypesItemJobsV4>, List<String>>(degreeTypes, (value) => pulumi.Input.encodeList<JobDegreeTypesItemJobsV4, String>(value, (value) => value.wireValue)),
      'department': ?department,
      'description': description,
      'employmentTypes': ?pulumi.Input.mapOptionalInputValue<List<JobEmploymentTypesItemJobsV4>, List<String>>(employmentTypes, (value) => pulumi.Input.encodeList<JobEmploymentTypesItemJobsV4, String>(value, (value) => value.wireValue)),
      'incentives': ?incentives,
      'jobBenefits': ?pulumi.Input.mapOptionalInputValue<List<JobJobBenefitsItemJobsV4>, List<String>>(jobBenefits, (value) => pulumi.Input.encodeList<JobJobBenefitsItemJobsV4, String>(value, (value) => value.wireValue)),
      'jobEndTime': ?jobEndTime,
      'jobLevel': ?pulumi.Input.mapOptionalInputValue<JobJobLevelJobsV4, String>(jobLevel, (value) => value.wireValue),
      'jobStartTime': ?jobStartTime,
      'languageCode': ?languageCode,
      'name': ?name,
      'postingExpireTime': ?postingExpireTime,
      'postingPublishTime': ?postingPublishTime,
      'postingRegion': ?pulumi.Input.mapOptionalInputValue<JobPostingRegionJobsV4, String>(postingRegion, (value) => value.wireValue),
      'processingOptions': ?pulumi.Input.mapOptionalInputValue<ProcessingOptionsJobsV4, Map<String, dynamic>>(processingOptions, (value) => value.toMap()),
      'project': ?project,
      'promotionValue': ?promotionValue,
      'qualifications': ?qualifications,
      'requisitionId': requisitionId,
      'responsibilities': ?responsibilities,
      'tenantId': tenantId,
      'title': title,
      'visibility': ?pulumi.Input.mapOptionalInputValue<JobVisibilityJobsV4, String>(visibility, (value) => value.wireValue),
    };
  }

  factory JobJobsV4Args.fromMap(Map<String, dynamic> map) {
    return JobJobsV4Args(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationInfo: (() { final guardedValue = map['applicationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationInfoJobsV4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      company: pulumi.Input.fromValue(map['company'] as String),
      compensationInfo: (() { final guardedValue = map['compensationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompensationInfoJobsV4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customAttributes: (() { final guardedValue = map['customAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      degreeTypes: (() { final guardedValue = map['degreeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobDegreeTypesItemJobsV4>(guardedValue, (value) => JobDegreeTypesItemJobsV4.fromValue(value as String))); })(),
      department: (() { final guardedValue = map['department']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      employmentTypes: (() { final guardedValue = map['employmentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobEmploymentTypesItemJobsV4>(guardedValue, (value) => JobEmploymentTypesItemJobsV4.fromValue(value as String))); })(),
      incentives: (() { final guardedValue = map['incentives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobBenefits: (() { final guardedValue = map['jobBenefits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobJobBenefitsItemJobsV4>(guardedValue, (value) => JobJobBenefitsItemJobsV4.fromValue(value as String))); })(),
      jobEndTime: (() { final guardedValue = map['jobEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobLevel: (() { final guardedValue = map['jobLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobJobLevelJobsV4.fromValue(guardedValue as String)); })(),
      jobStartTime: (() { final guardedValue = map['jobStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postingExpireTime: (() { final guardedValue = map['postingExpireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postingPublishTime: (() { final guardedValue = map['postingPublishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postingRegion: (() { final guardedValue = map['postingRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPostingRegionJobsV4.fromValue(guardedValue as String)); })(),
      processingOptions: (() { final guardedValue = map['processingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProcessingOptionsJobsV4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionValue: (() { final guardedValue = map['promotionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qualifications: (() { final guardedValue = map['qualifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requisitionId: pulumi.Input.fromValue(map['requisitionId'] as String),
      responsibilities: (() { final guardedValue = map['responsibilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobVisibilityJobsV4.fromValue(guardedValue as String)); })(),
    );
  }
}

