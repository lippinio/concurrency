using NUnit.Framework;
using testhelpers;

namespace tests;

public class Tests
{
    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void Test1()
    {
        var foo = new Class1();
        Assert.Pass();
    }
}