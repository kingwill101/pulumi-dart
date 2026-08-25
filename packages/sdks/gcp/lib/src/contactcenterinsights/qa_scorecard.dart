import 'package:pulumi/pulumi.dart' as pulumi;
import 'qa_scorecard_args.dart';
import 'qa_scorecard_state.dart';

/// A QaScorecard represents a collection of questions to be scored during analysis.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// QaScorecard can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/qaScorecards/{{qa_scorecard_id}}`
/// * `{{project}}/{{location}}/{{qa_scorecard_id}}`
/// * `{{location}}/{{qa_scorecard_id}}`
///
///
/// When using the `pulumi import` command, QaScorecard can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/qaScorecard:QaScorecard default projects/{{project}}/locations/{{location}}/qaScorecards/{{qa_scorecard_id}}
/// $ pulumi import gcp:contactcenterinsights/qaScorecard:QaScorecard default {{project}}/{{location}}/{{qa_scorecard_id}}
/// $ pulumi import gcp:contactcenterinsights/qaScorecard:QaScorecard default {{location}}/{{qa_scorecard_id}}
/// ```
class QaScorecard extends pulumi.CustomResource {
  /// The time at which this scorecard was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A text description explaining the intent of the scorecard.
  late final pulumi.Output<String?> description;
  /// The user-specified display name of the scorecard.
  late final pulumi.Output<String?> displayName;
  /// Whether the scorecard is the default one for the project.
  /// A default scorecard cannot be deleted and will always appear first in
  /// scorecard selector.
  late final pulumi.Output<bool?> isDefault;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The scorecard name.
  /// Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A unique ID for the new QaScorecard. This ID will become the final
  /// component of the QaScorecard's resource name. If no ID is specified, a
  /// server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`.
  late final pulumi.Output<String> qaScorecardId;
  /// Possible values:
  /// QA_SCORECARD_SOURCE_CUSTOMER_DEFINED
  /// QA_SCORECARD_SOURCE_DISCOVERY_ENGINE
  late final pulumi.Output<String?> source;
  /// The most recent time at which the scorecard was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [QaScorecard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QaScorecard]. {@macro pulumi_contactcenterinsights_qa_scorecard_qa_scorecard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QaScorecard(
    String name, {
    QaScorecardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/qaScorecard:QaScorecard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isDefault = registerOutput<bool?>('isDefault');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    qaScorecardId = registerOutput<String>('qaScorecardId');
    source = registerOutput<String?>('source');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [QaScorecard] resource's state with the given [name] and [id].
  static QaScorecard get(
    String name,
    pulumi.Input<String> id, {
    QaScorecardState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return QaScorecard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  QaScorecard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/qaScorecard:QaScorecard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isDefault = registerOutput<bool?>('isDefault');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    qaScorecardId = registerOutput<String>('qaScorecardId');
    source = registerOutput<String?>('source');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [QaScorecard] resource.
  QaScorecard.reference(String urn)
    : super(
        'gcp:contactcenterinsights/qaScorecard:QaScorecard',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    isDefault = registerOutput<bool?>('isDefault');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    qaScorecardId = registerOutput<String>('qaScorecardId');
    source = registerOutput<String?>('source');
    updateTime = registerOutput<String>('updateTime');
  }
}
