import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'Pulumi for Dart',
  tagline: 'Build, deploy, and manage infrastructure with Dart',
  favicon: 'img/favicon.ico',
  future: {
    v4: true,
  },
  url: 'https://kingwill101.github.io',
  baseUrl: '/pulumi-dart/',
  organizationName: 'kingwill101',
  projectName: 'pulumi-dart',
  onBrokenLinks: 'throw',
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },
  presets: [
    [
      'classic',
      {
        docs: {
          routeBasePath: 'docs',
          sidebarPath: './sidebars.ts',
          editUrl: 'https://github.com/kingwill101/pulumi-dart/tree/master/website/',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],
  themeConfig: {
    image: 'img/docusaurus-social-card.jpg',
    colorMode: {
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'Pulumi Dart',
      logo: {
        alt: 'Pulumi Dart',
        src: 'img/logo.svg',
      },
      items: [
        {to: '/docs/intro', label: 'Docs', position: 'left'},
        {to: '/docs/get-started/prerequisites', label: 'Get Started', position: 'left'},
        {to: '/docs/providers/generate-provider-sdk', label: 'Provider SDKs', position: 'left'},
        {to: '/docs/reference/community-support', label: 'Community', position: 'left'},
        {
          href: 'https://github.com/kingwill101/pulumi-dart',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            {label: 'Introduction', to: '/docs/intro'},
            {label: 'Get Started', to: '/docs/get-started/prerequisites'},
            {label: 'Provider SDKs', to: '/docs/providers/generate-provider-sdk'},
            {label: 'Community', to: '/docs/reference/community-support'},
          ],
        },
        {
          title: 'Project',
          items: [
            {label: 'Repository', href: 'https://github.com/kingwill101/pulumi-dart'},
            {label: 'Pulumi Registry', href: 'https://www.pulumi.com/registry/'},
            {label: 'Pulumi Docs', href: 'https://www.pulumi.com/docs/'},
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Pulumi Dart contributors`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
