package com.test;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.mockito.Mockito.verifyNoMoreInteractions;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.times;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.mockito.Mockito.when;
import com.demo.ApplicationDemo;
import com.demo.Service.Services;
import com.demo.controller.DemoController;

@RunWith(MockitoJUnitRunner.class) 
@SpringApplicationConfiguration(classes = ApplicationDemo.class)
@WebAppConfiguration
public class TestCases {

	@Autowired
	private DemoController demoController;
	
	@Mock
	private Services serv;
	
	@Mock
    private WebApplicationContext wac;
    private MockMvc mockMvc;
    
    @BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		mockMvc = MockMvcBuilders.standaloneSetup(new DemoController(serv)).build();
	}

	@After
	public void tearDown() throws Exception {
	}
	
	@Test
	public void   getMsgTest() throws Exception {
		String expectResult = "Hello Pankaj sir, how are you?";
		//when(serv.getMsg("Pankaj")).thenReturn(Arrays.asList(expectResult));
		when(serv.getMsg("Pankaj")).thenReturn(expectResult);
		
			String nameV= "Pankaj";
		   mockMvc.perform(get("/getRecordM/{name}",nameV).accept(MediaType.APPLICATION_JSON)).
		   andExpect(status().isOk()).andExpect(content().string("Hello Pankaj sir, how are you?"));;
         
           verify(serv, times(1)).getMsg("Pankaj");
	       verifyNoMoreInteractions(serv);
   }
    
}
