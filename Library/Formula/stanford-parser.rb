class StanfordParser < Formula
  desc "Statistical NLP parser"
  homepage "http://nlp.stanford.edu/software/lex-parser.shtml"
  url "https://web.archive.org/web/20220402220037/https://downloads.cs.stanford.edu/nlp/software/stanford-parser-full-2015-04-20.zip"
  sha256 "05bd11e500219bbbffa4bae004619560bc03f1481f9516c4bb51863e265333b8"
  version "3.5.2"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/*.sh"]
  end

  test do
    system "#{bin}/lexparser.sh", "#{libexec}/data/testsent.txt"
  end
end
