class ( Ord (DocumentId doc), Binary (DocumentId doc),
        Binary p
      ) => Document doc p where
  -- | Associated data type to denote the id of documents
  -- It is the responsibility of the user to ensure that the id
  -- of the documents are unique
  type DocumentId doc

  -- | Get the document id fromt the doc
  getDocId :: doc -> DocumentId doc

  -- | Processes a document to retrieve the terms
  -- Returns a list of tuples of Key and b where b can be any
  -- arbitrary information corresponding to the term
  -- Together with DocumentId this is used to construct
  -- the list of 'Term'
  getTerms :: doc -> [(Term doc, p)]
