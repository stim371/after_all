#After All

A small utility to make sure your tests clean up after themselves.

In rspec, `before(:all)` blocks can be used to create data for multiple tests without the extra per-test setup cost; however, the data created within them is not cleaned up during the normal test-level transaction.

Without an accompanying `after(:all)` block to destroy the created records, the records will remain in the database during other tests, potentially changing the state of other tests.

## Implementation Idea
After a quick googling, it seems like this might be an interesting opportunity to look into s-expressions for code analysis.

## Potential Resources

* https://github.com/ngty/sourcify
* http://www.infoq.com/news/2008/11/static-analysis-tool-roundup
