// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_metadata_admin_response.dart';

/// TaskMetadata are attributes that are associated to every common Task we have.
class EnterpriseCrmEventbusProtoTaskMetadataResponse {
  /// The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  final pulumi.Input<String> activeTaskName;
  final pulumi.Input<List<EnterpriseCrmEventbusProtoTaskMetadataAdminResponse>> admins;
  final pulumi.Input<String> category;
  /// The Code Search link to the Task Java file.
  final pulumi.Input<String> codeSearchLink;
  /// Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  final pulumi.Input<String> defaultJsonValidationOption;
  /// Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  final pulumi.Input<String> defaultSpec;
  /// In a few sentences, describe the purpose and usage of the task.
  final pulumi.Input<String> description;
  /// The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  final pulumi.Input<String> descriptiveName;
  /// Snippet of markdown documentation to embed in the RHP for this task.
  final pulumi.Input<String> docMarkdown;
  final pulumi.Input<String> externalCategory;
  /// Sequence with which the task in specific category to be displayed in task discovery panel for external users.
  final pulumi.Input<int> externalCategorySequence;
  /// External-facing documention embedded in the RHP for this task.
  final pulumi.Input<String> externalDocHtml;
  /// Doc link for external-facing documentation (separate from g3doc).
  final pulumi.Input<String> externalDocLink;
  /// DEPRECATED: Use external_doc_html.
  final pulumi.Input<String> externalDocMarkdown;
  /// URL to the associated G3 Doc for the task if available
  final pulumi.Input<String> g3DocLink;
  /// URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  final pulumi.Input<String> iconLink;
  /// The deprecation status of the current task. Default value is false;
  final pulumi.Input<bool> isDeprecated;
  /// The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.
  final pulumi.Input<String> name;
  /// External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html
  final pulumi.Input<String> standaloneExternalDocHtml;
  /// Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
  final pulumi.Input<String> status;
  final pulumi.Input<String> system;
  /// A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskMetadataResponse].
  /// [activeTaskName] The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  /// [admins] Required.
  /// [category] Required.
  /// [codeSearchLink] The Code Search link to the Task Java file.
  /// [defaultJsonValidationOption] Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  /// [defaultSpec] Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  /// [description] In a few sentences, describe the purpose and usage of the task.
  /// [descriptiveName] The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  /// [docMarkdown] Snippet of markdown documentation to embed in the RHP for this task.
  /// [externalCategory] Required.
  /// [externalCategorySequence] Sequence with which the task in specific category to be displayed in task discovery panel for external users.
  /// [externalDocHtml] External-facing documention embedded in the RHP for this task.
  /// [externalDocLink] Doc link for external-facing documentation (separate from g3doc).
  /// [externalDocMarkdown] DEPRECATED: Use external_doc_html.
  /// [g3DocLink] URL to the associated G3 Doc for the task if available
  /// [iconLink] URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  /// [isDeprecated] The deprecation status of the current task. Default value is false;
  /// [name] The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.
  /// [standaloneExternalDocHtml] External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html
  /// [status] Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
  /// [system] Required.
  /// [tags] A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  EnterpriseCrmEventbusProtoTaskMetadataResponse({
    required this.activeTaskName,
    required this.admins,
    required this.category,
    required this.codeSearchLink,
    required this.defaultJsonValidationOption,
    required this.defaultSpec,
    required this.description,
    required this.descriptiveName,
    required this.docMarkdown,
    required this.externalCategory,
    required this.externalCategorySequence,
    required this.externalDocHtml,
    required this.externalDocLink,
    required this.externalDocMarkdown,
    required this.g3DocLink,
    required this.iconLink,
    required this.isDeprecated,
    required this.name,
    required this.standaloneExternalDocHtml,
    required this.status,
    required this.system,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTaskName': activeTaskName,
      'admins': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoTaskMetadataAdminResponse>, List<Map<String, dynamic>>>(admins, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoTaskMetadataAdminResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'category': category,
      'codeSearchLink': codeSearchLink,
      'defaultJsonValidationOption': defaultJsonValidationOption,
      'defaultSpec': defaultSpec,
      'description': description,
      'descriptiveName': descriptiveName,
      'docMarkdown': docMarkdown,
      'externalCategory': externalCategory,
      'externalCategorySequence': externalCategorySequence,
      'externalDocHtml': externalDocHtml,
      'externalDocLink': externalDocLink,
      'externalDocMarkdown': externalDocMarkdown,
      'g3DocLink': g3DocLink,
      'iconLink': iconLink,
      'isDeprecated': isDeprecated,
      'name': name,
      'standaloneExternalDocHtml': standaloneExternalDocHtml,
      'status': status,
      'system': system,
      'tags': tags,
    };
  }

  factory EnterpriseCrmEventbusProtoTaskMetadataResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskMetadataResponse(
      activeTaskName: (map['activeTaskName'] as String).input(),
      admins: (pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskMetadataAdminResponse>(map['admins'], (value) => EnterpriseCrmEventbusProtoTaskMetadataAdminResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      category: (map['category'] as String).input(),
      codeSearchLink: (map['codeSearchLink'] as String).input(),
      defaultJsonValidationOption: (map['defaultJsonValidationOption'] as String).input(),
      defaultSpec: (map['defaultSpec'] as String).input(),
      description: (map['description'] as String).input(),
      descriptiveName: (map['descriptiveName'] as String).input(),
      docMarkdown: (map['docMarkdown'] as String).input(),
      externalCategory: (map['externalCategory'] as String).input(),
      externalCategorySequence: (map['externalCategorySequence'] as int).input(),
      externalDocHtml: (map['externalDocHtml'] as String).input(),
      externalDocLink: (map['externalDocLink'] as String).input(),
      externalDocMarkdown: (map['externalDocMarkdown'] as String).input(),
      g3DocLink: (map['g3DocLink'] as String).input(),
      iconLink: (map['iconLink'] as String).input(),
      isDeprecated: (map['isDeprecated'] as bool).input(),
      name: (map['name'] as String).input(),
      standaloneExternalDocHtml: (map['standaloneExternalDocHtml'] as String).input(),
      status: (map['status'] as String).input(),
      system: (map['system'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

