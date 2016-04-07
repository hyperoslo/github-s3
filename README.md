# github-s3

At Hyper, we make lots of things. Many of those things are open source, but
there are also things that are closed source. We have a limited amount of private
repositories on GitHub, though, so once we haven't needed to change them for a
while we archive them to AWS S3.

These are shell scripts that make it really easy to archive and restore repositories
between GitHub and AWS S3.

## Usage

Clone the repository from GitHub, compress it and upload it to AWS S3:

```zsh
$ github-to-s3 hyperoslo/old-repository
```

Download the repository from AWS S3, uncompress it and push it to a new private
repository on GitHub:

```zsh
$ s3-to-github hyperoslo/old-repository
```

## Configuration

You'll need to set the following environment variables to use these scripts:

* `GITHUB_S3_BUCKET`: The name of the bucket you want to archive to.
* `AWS_DEFAULT_REGION`: The AWS region your bucket is in.
* `GITHUB_S3_GITHUB_TOKEN`: A GitHub access token with access to create and
  delete private repositories.

## Hyper loves you

[Hyper] made this. We're a bunch of awesome folks who are very passionate about
building things. You should [tweet us](http://twitter.com/hyperoslo) if you
can't get it to work. In fact, you should tweet us anyway. If you're using
github-s3, we probably want to hire you.

[Hyper]: https://github.com/hyperoslo
