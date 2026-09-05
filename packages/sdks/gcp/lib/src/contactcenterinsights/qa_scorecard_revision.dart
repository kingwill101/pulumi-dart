import 'package:pulumi/pulumi.dart' as pulumi;
import 'qa_scorecard_revision_args.dart';
import 'qa_scorecard_revision_snapshot.dart';
import 'qa_scorecard_revision_state.dart';

/// A revision of a QaScorecard.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// QaScorecardRevision can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/qaScorecards/{{qa_scorecard}}/revisions/{{qa_scorecard_revision_id}}`
/// * `{{project}}/{{location}}/{{qa_scorecard}}/{{qa_scorecard_revision_id}}`
/// * `{{location}}/{{qa_scorecard}}/{{qa_scorecard_revision_id}}`
///
///
/// When using the `pulumi import` command, QaScorecardRevision can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/qaScorecardRevision:QaScorecardRevision default projects/{{project}}/locations/{{location}}/qaScorecards/{{qa_scorecard}}/revisions/{{qa_scorecard_revision_id}}
/// $ pulumi import gcp:contactcenterinsights/qaScorecardRevision:QaScorecardRevision default {{project}}/{{location}}/{{qa_scorecard}}/{{qa_scorecard_revision_id}}
/// $ pulumi import gcp:contactcenterinsights/qaScorecardRevision:QaScorecardRevision default {{location}}/{{qa_scorecard}}/{{qa_scorecard_revision_id}}
/// ```
class QaScorecardRevision extends pulumi.CustomResource {
  /// Alternative IDs for this revision of the scorecard, e.g., `latest`.
  late final pulumi.Output<List<String>> alternateIds;
  /// (Output)
  /// The time at which this scorecard was created.
  late final pulumi.Output<String> createTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// (Output)
  /// Identifier. The scorecard name.
  /// Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> qaScorecard;
  /// A unique ID for the new QaScorecardRevision. This ID will become the final
  /// component of the QaScorecardRevision's resource name.
  /// If no ID is specified this resource will get the latest revision on the given scorecard.
  late final pulumi.Output<String> qaScorecardRevisionId;
  /// A QaScorecard represents a collection of questions to be scored during
  /// analysis.
  /// Structure is documented below.
  late final pulumi.Output<List<QaScorecardRevisionSnapshot>> snapshots;
  /// State of the scorecard revision, indicating whether it's ready to
  /// be used in analysis.
  /// Possible values:
  /// EDITABLE
  /// TRAINING
  /// TRAINING_FAILED
  /// READY
  /// DELETING
  /// TRAINING_CANCELLED
  late final pulumi.Output<String> state;

  /// Creates a new [QaScorecardRevision].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QaScorecardRevision]. {@macro pulumi_contactcenterinsights_qa_scorecard_revision_qa_scorecard_revision_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QaScorecardRevision(
    String name, {
    QaScorecardRevisionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/qaScorecardRevision:QaScorecardRevision',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    alternateIds = registerOutput<List<String>>('alternateIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    qaScorecard = registerOutput<String>('qaScorecard');
    qaScorecardRevisionId = registerOutput<String>('qaScorecardRevisionId');
    snapshots = registerOutput<List<QaScorecardRevisionSnapshot>>('snapshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QaScorecardRevisionSnapshot>(guardedValue, (value) => QaScorecardRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [QaScorecardRevision] resource's state with the given [name] and [id].
  static QaScorecardRevision get(
    String name,
    pulumi.Input<String> id, {
    QaScorecardRevisionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return QaScorecardRevision._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  QaScorecardRevision._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/qaScorecardRevision:QaScorecardRevision',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alternateIds = registerOutput<List<String>>('alternateIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    qaScorecard = registerOutput<String>('qaScorecard');
    qaScorecardRevisionId = registerOutput<String>('qaScorecardRevisionId');
    snapshots = registerOutput<List<QaScorecardRevisionSnapshot>>('snapshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QaScorecardRevisionSnapshot>(guardedValue, (value) => QaScorecardRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>())); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [QaScorecardRevision] resource.
  QaScorecardRevision.reference(String urn)
    : super(
        'gcp:contactcenterinsights/qaScorecardRevision:QaScorecardRevision',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alternateIds = registerOutput<List<String>>('alternateIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createTime = registerOutput<String>('createTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    qaScorecard = registerOutput<String>('qaScorecard');
    qaScorecardRevisionId = registerOutput<String>('qaScorecardRevisionId');
    snapshots = registerOutput<List<QaScorecardRevisionSnapshot>>('snapshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QaScorecardRevisionSnapshot>(guardedValue, (value) => QaScorecardRevisionSnapshot.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }
}
