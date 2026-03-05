// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info.dart';
import 'compensation_info.dart';
import 'job_degree_types_item.dart';
import 'job_employment_types_item.dart';
import 'job_job_benefits_item.dart';
import 'job_job_level.dart';
import 'job_posting_region.dart';
import 'job_visibility.dart';
import 'processing_options.dart';

/// {@template pulumi_jobs_v3_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_jobs_v3_job_args_doc}
class JobArgs {
  /// Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  final pulumi.Input<List<String>>? addresses;
  /// At least one field within ApplicationInfo must be specified. Job application information.
  final pulumi.Input<ApplicationInfo> applicationInfo;
  /// The resource name of the company listing the job, such as "projects/api-test-project/companies/foo".
  final pulumi.Input<String> companyName;
  /// Optional. Job compensation information.
  final pulumi.Input<CompensationInfo>? compensationInfo;
  /// Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  final pulumi.Input<Map<String, String>>? customAttributes;
  /// Optional. The desired education degrees for the job, such as Bachelors, Masters.
  final pulumi.Input<List<JobDegreeTypesItem>>? degreeTypes;
  /// Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  final pulumi.Input<String>? department;
  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  final pulumi.Input<String> description;
  /// Optional. The employment type(s) of a job, for example, full time or part time.
  final pulumi.Input<List<JobEmploymentTypesItem>>? employmentTypes;
  /// Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? incentives;
  /// Optional. The benefits included with the job.
  final pulumi.Input<List<JobJobBenefitsItem>>? jobBenefits;
  /// Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final pulumi.Input<String>? jobEndTime;
  /// Optional. The experience level associated with the job, such as "Entry Level".
  final pulumi.Input<JobJobLevel>? jobLevel;
  /// Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final pulumi.Input<String>? jobStartTime;
  /// Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  final pulumi.Input<String>? languageCode;
  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/jobs/{job_id}", for example, "projects/api-test-project/jobs/1234". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  final pulumi.Input<String>? name;
  /// Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  final pulumi.Input<String>? postingExpireTime;
  /// Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  final pulumi.Input<String>? postingPublishTime;
  /// Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  final pulumi.Input<JobPostingRegion>? postingRegion;
  /// Optional. Options for job processing.
  final pulumi.Input<ProcessingOptions>? processingOptions;
  final pulumi.Input<String>? project;
  /// Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue &gt;0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  final pulumi.Input<int>? promotionValue;
  /// Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? qualifications;
  /// The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.
  final pulumi.Input<String> requisitionId;
  /// Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? responsibilities;
  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  final pulumi.Input<String> title;
  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  final pulumi.Input<JobVisibility>? visibility;

  /// Creates a new [JobArgs].
  /// [addresses] Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  /// [applicationInfo] At least one field within ApplicationInfo must be specified. Job application information.
  /// [companyName] The resource name of the company listing the job, such as "projects/api-test-project/companies/foo".
  /// [compensationInfo] Optional. Job compensation information.
  /// [customAttributes] Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  /// [degreeTypes] Optional. The desired education degrees for the job, such as Bachelors, Masters.
  /// [department] Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  /// [description] The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  /// [employmentTypes] Optional. The employment type(s) of a job, for example, full time or part time.
  /// [incentives] Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  /// [jobBenefits] Optional. The benefits included with the job.
  /// [jobEndTime] Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  /// [jobLevel] Optional. The experience level associated with the job, such as "Entry Level".
  /// [jobStartTime] Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  /// [languageCode] Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  /// [name] Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/jobs/{job_id}", for example, "projects/api-test-project/jobs/1234". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  /// [postingExpireTime] Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  /// [postingPublishTime] Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  /// [postingRegion] Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  /// [processingOptions] Optional. Options for job processing.
  /// [project] Optional.
  /// [promotionValue] Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue &gt;0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  /// [qualifications] Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  /// [requisitionId] The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.
  /// [responsibilities] Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  /// [title] The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  /// [visibility] Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  JobArgs({
    this.addresses,
    required this.applicationInfo,
    required this.companyName,
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
    required this.title,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'applicationInfo': pulumi.Input.mapInputValue<ApplicationInfo, Map<String, dynamic>>(applicationInfo, (value) => value.toMap()),
      'companyName': companyName,
      'compensationInfo': ?pulumi.Input.mapOptionalInputValue<CompensationInfo, Map<String, dynamic>>(compensationInfo, (value) => value.toMap()),
      'customAttributes': ?customAttributes,
      'degreeTypes': ?pulumi.Input.mapOptionalInputValue<List<JobDegreeTypesItem>, List<String>>(degreeTypes, (value) => pulumi.Input.encodeList<JobDegreeTypesItem, String>(value, (value) => value.wireValue)),
      'department': ?department,
      'description': description,
      'employmentTypes': ?pulumi.Input.mapOptionalInputValue<List<JobEmploymentTypesItem>, List<String>>(employmentTypes, (value) => pulumi.Input.encodeList<JobEmploymentTypesItem, String>(value, (value) => value.wireValue)),
      'incentives': ?incentives,
      'jobBenefits': ?pulumi.Input.mapOptionalInputValue<List<JobJobBenefitsItem>, List<String>>(jobBenefits, (value) => pulumi.Input.encodeList<JobJobBenefitsItem, String>(value, (value) => value.wireValue)),
      'jobEndTime': ?jobEndTime,
      'jobLevel': ?pulumi.Input.mapOptionalInputValue<JobJobLevel, String>(jobLevel, (value) => value.wireValue),
      'jobStartTime': ?jobStartTime,
      'languageCode': ?languageCode,
      'name': ?name,
      'postingExpireTime': ?postingExpireTime,
      'postingPublishTime': ?postingPublishTime,
      'postingRegion': ?pulumi.Input.mapOptionalInputValue<JobPostingRegion, String>(postingRegion, (value) => value.wireValue),
      'processingOptions': ?pulumi.Input.mapOptionalInputValue<ProcessingOptions, Map<String, dynamic>>(processingOptions, (value) => value.toMap()),
      'project': ?project,
      'promotionValue': ?promotionValue,
      'qualifications': ?qualifications,
      'requisitionId': requisitionId,
      'responsibilities': ?responsibilities,
      'title': title,
      'visibility': ?pulumi.Input.mapOptionalInputValue<JobVisibility, String>(visibility, (value) => value.wireValue),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationInfo: pulumi.Input.fromValue(ApplicationInfo.fromMap((map['applicationInfo']! as Map).cast<String, dynamic>())),
      companyName: pulumi.Input.fromValue(map['companyName'] as String),
      compensationInfo: (() { final guardedValue = map['compensationInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompensationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customAttributes: (() { final guardedValue = map['customAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      degreeTypes: (() { final guardedValue = map['degreeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobDegreeTypesItem>(guardedValue, (value) => JobDegreeTypesItem.fromValue(value as String))); })(),
      department: (() { final guardedValue = map['department']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      employmentTypes: (() { final guardedValue = map['employmentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobEmploymentTypesItem>(guardedValue, (value) => JobEmploymentTypesItem.fromValue(value as String))); })(),
      incentives: (() { final guardedValue = map['incentives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobBenefits: (() { final guardedValue = map['jobBenefits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobJobBenefitsItem>(guardedValue, (value) => JobJobBenefitsItem.fromValue(value as String))); })(),
      jobEndTime: (() { final guardedValue = map['jobEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobLevel: (() { final guardedValue = map['jobLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobJobLevel.fromValue(guardedValue as String)); })(),
      jobStartTime: (() { final guardedValue = map['jobStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postingExpireTime: (() { final guardedValue = map['postingExpireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postingPublishTime: (() { final guardedValue = map['postingPublishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postingRegion: (() { final guardedValue = map['postingRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPostingRegion.fromValue(guardedValue as String)); })(),
      processingOptions: (() { final guardedValue = map['processingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProcessingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionValue: (() { final guardedValue = map['promotionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      qualifications: (() { final guardedValue = map['qualifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requisitionId: pulumi.Input.fromValue(map['requisitionId'] as String),
      responsibilities: (() { final guardedValue = map['responsibilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobVisibility.fromValue(guardedValue as String)); })(),
    );
  }
}

