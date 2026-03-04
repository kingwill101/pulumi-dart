import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_entry_args.dart';
import 'glossary_terms_pair_response.dart';
import 'glossary_terms_set_response.dart';

/// Creates a glossary entry.
class GlossaryEntry extends pulumi.CustomResource {
  /// Describes the glossary entry.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> glossaryId;
  late final pulumi.Output<String> location;

  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Used for an unidirectional glossary.
  late final pulumi.Output<GlossaryTermsPairResponse> termsPair;

  /// Used for an equivalent term sets glossary.
  late final pulumi.Output<GlossaryTermsSetResponse> termsSet;

  /// Creates a new [GlossaryEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlossaryEntry]. {@macro pulumi_translate_v3_glossary_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlossaryEntry(
    String name, {
    GlossaryEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:translate/v3:GlossaryEntry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    glossaryId = registerOutput<String>('glossaryId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    termsPair = registerOutput<GlossaryTermsPairResponse>('termsPair');
    termsSet = registerOutput<GlossaryTermsSetResponse>('termsSet');
  }
}
