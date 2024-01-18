class Secureli < Formula
    include Language::Python::Virtualenv
    desc "seCureLI is a tool that enables you to experience the delight of building products by helping you get ideas from your head into working software as frictionlessly as possible, in a reliable, secure, scalable, and observable way"
    homepage "https://github.com/slalombuild/secureli"
    url "https://github.com/slalombuild/secureli/releases/download/v0.21.5/secureli-0.21.5.tar.gz"
    version "0.21.5"
    sha256 "d70ca437d0f5adc606f91db6393747ac490c312de3bd83a304407dab42827518"
    license "Apache-2.0"

    depends_on "pre-commit"
    depends_on "pygments"
    depends_on "python@3.9"
    depends_on "python-certifi"
    depends_on "python-charset-normalizer"
    depends_on "python-click"
    depends_on "python-idna"
    depends_on "python-jinja"
    depends_on "python-markdown-it-py"
    depends_on "python-markupsafe"
    depends_on "python-mdurl"
    depends_on "python-pathspec"
    depends_on "python-requests"
    depends_on "python-rich"
    depends_on "python-typing-extensions"
    depends_on "python-urllib3"
    depends_on "pyyaml"
    depends_on "six"
    
    resource "cfgv" do
        url "https://files.pythonhosted.org/packages/11/74/539e56497d9bd1d484fd863dd69cbbfa653cd2aa27abfe35653494d85e94/cfgv-3.4.0.tar.gz"
        sha256 "e52591d4c5f5dead8e0f673fb16db7949d2cfb3f7da4582893288f0ded8fe560"
    end
    
    resource "dependency-injector" do
        url "https://files.pythonhosted.org/packages/eb/c5/ec73412b4b460fe1ebeef8380d1aee5e8bd0374a2e234a05b5d40b0b3db0/dependency-injector-4.41.0.tar.gz"
        sha256 "939dfc657104bc3e66b67afd3fb2ebb0850c9a1e73d0d26066f2bbdd8735ff9c"
    end
    
    resource "identify" do
        url "https://files.pythonhosted.org/packages/d1/31/e0808997702fef9e8bd639879df6d6711277d40558e77b885cccec424042/identify-2.5.29.tar.gz"
        sha256 "d43d52b86b15918c137e3a74fff5224f60385cd0e9c38e99d07c257f02f151a5"
    end
    
    resource "pydantic" do
        url "https://files.pythonhosted.org/packages/cf/01/e8a380dc6e92a76113f034c58c9ffdbd115753e9b944ddf5d2dbe862f248/pydantic-1.10.11.tar.gz"
        sha256 "f66d479cf7eb331372c470614be6511eae96f1f120344c25f3f9bb59fb1b5528"
    end
    
    resource "rich" do
        url "https://files.pythonhosted.org/packages/e3/12/67d0098eb77005f5e068de639e6f4cfb8f24e6fcb0fd2037df0e1d538fee/rich-13.4.2.tar.gz"
        sha256 "d653d6bccede5844304c605d5aac802c7cf9621efd700b46c7ec2b51ea914898"
    end
    
    resource "typer" do
        url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75886439ab3dac889f14f8ad511982a754e382c9b6ca895b29e9/typer-0.9.0.tar.gz"
        sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
    end
    

    def install
      virtualenv_install_with_resources
    end

    test do
      system bin/"secureli", "--version"
    end
  end
