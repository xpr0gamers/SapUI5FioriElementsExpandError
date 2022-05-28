using {example.expanderror.db as expanderror_db} from '../db/schema';

namespace example.expanderror.srv;

service AuthorsService @(path : '/authors-srv') {
    entity Authors as select from expanderror_db.Authors;
    entity Books   as select from expanderror_db.Books;
}

annotate AuthorsService.Authors with @fiori.draft.enabled;
annotate AuthorsService.Authors with @odata.draft.enabled;
