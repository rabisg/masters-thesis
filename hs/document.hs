class ( Ord doc, Binary doc, Binary p
      ) => Document doc p where
  -- | Processes a document to retrieve the terms
  -- Returns a list of tuples of Key and b where b can be any
  -- arbitrary information corresponding to the term
  -- Together with DocumentId this is used to construct
  -- the list of 'Term'
  getTerms :: doc -> [(Term doc, p)]
