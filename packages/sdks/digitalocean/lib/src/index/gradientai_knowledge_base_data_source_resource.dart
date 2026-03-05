import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source_args.dart';
import 'gradientai_knowledge_base_data_source_spaces_data_source.dart';
import 'gradientai_knowledge_base_data_source_state.dart';
import 'gradientai_knowledge_base_data_source_web_crawler_data_source.dart';

class GradientaiKnowledgeBaseDataSourceResource extends pulumi.CustomResource {
  /// UUID of the Knowledge Base
  late final pulumi.Output<String> knowledgeBaseUuid;
  late final pulumi.Output<GradientaiKnowledgeBaseDataSourceSpacesDataSource?>
  spacesDataSource;
  late final pulumi.Output<
    GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource?
  >
  webCrawlerDataSource;

  /// Creates a new [GradientaiKnowledgeBaseDataSourceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiKnowledgeBaseDataSourceResource]. {@macro pulumi_index_gradientai_knowledge_base_data_source_gradientai_knowledge_base_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiKnowledgeBaseDataSourceResource(
    String name, {
    GradientaiKnowledgeBaseDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/gradientaiKnowledgeBaseDataSource:GradientaiKnowledgeBaseDataSource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    spacesDataSource =
        registerOutput<GradientaiKnowledgeBaseDataSourceSpacesDataSource?>(
          'spacesDataSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    webCrawlerDataSource =
        registerOutput<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource?>(
          'webCrawlerDataSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [GradientaiKnowledgeBaseDataSourceResource] resource's state with the given [name] and [id].
  static GradientaiKnowledgeBaseDataSourceResource get(
    String name,
    pulumi.Input<String> id, {
    GradientaiKnowledgeBaseDataSourceState? state,
  }) {
    return GradientaiKnowledgeBaseDataSourceResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GradientaiKnowledgeBaseDataSourceResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'digitalocean:index/gradientaiKnowledgeBaseDataSource:GradientaiKnowledgeBaseDataSource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    spacesDataSource =
        registerOutput<GradientaiKnowledgeBaseDataSourceSpacesDataSource?>(
          'spacesDataSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    webCrawlerDataSource =
        registerOutput<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource?>(
          'webCrawlerDataSource',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
