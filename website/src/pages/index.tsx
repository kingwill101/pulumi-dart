import type {ReactNode} from 'react';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import Heading from '@theme/Heading';

import styles from './index.module.css';

export default function Home(): ReactNode {
  const {siteConfig} = useDocusaurusContext();

  return (
    <Layout title={siteConfig.title} description={siteConfig.tagline}>
      <header className={styles.hero}>
        <div className="container">
          <p className={styles.eyebrow}>Infrastructure as code for Dart</p>
          <Heading as="h1" className={styles.title}>
            Build cloud infrastructure with the Dart language and Pulumi.
          </Heading>
          <p className={styles.subtitle}>
            Learn the full path from first project to local provider SDK
            generation and smoke testing.
          </p>
          <div className={styles.actions}>
            <Link className="button button--primary button--lg" to="/docs/intro">
              Read the docs
            </Link>
            <Link
              className="button button--secondary button--lg"
              to="/docs/get-started/create-project">
              Start a project
            </Link>
          </div>
        </div>
      </header>

      <main className={styles.main}>
        <div className="container">
          <section className={styles.grid}>
            <article className={styles.card}>
              <h2>Get Started</h2>
              <p>Install the language host, create a Dart project, preview, and deploy.</p>
              <Link to="/docs/get-started/prerequisites">Open guide</Link>
            </article>
            <article className={styles.card}>
              <h2>Provider SDKs</h2>
              <p>Generate provider packages from schemas and validate locally without publishing.</p>
              <Link to="/docs/providers/generate-provider-sdk">Open guide</Link>
            </article>
            <article className={styles.card}>
              <h2>Reference</h2>
              <p>Use templates, release guidance, and community maintenance docs.</p>
              <Link to="/docs/reference/language-host-releases">Open reference</Link>
            </article>
          </section>
        </div>
      </main>
    </Layout>
  );
}
